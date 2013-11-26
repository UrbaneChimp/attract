/*
 *
 *  Attract-Mode frontend
 *  Copyright (C) 2013 Andrew Mickelson
 *
 *  This file is part of Attract-Mode.
 *
 *  Attract-Mode is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Attract-Mode is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Attract-Mode.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#ifndef FE_PRESENT_HPP
#define FE_PRESENT_HPP

#include <SFML/Graphics.hpp>
#include "fe_presentable.hpp"
#include "fe_settings.hpp"
#include "fe_sound.hpp"

class FeImage;
class FeTextureContainer;
class FeText;
class FeListBox;

enum FeTransitionType
{
	StartLayout=0,		// var = 1 if coming from screensaver, 0 otherwise
	EndLayout,			// var = 1 if going to screensaver, 0 otherwise
	ToNewSelection,	// var = index_offset of new selection
	ToGame,				// var = 0
	FromGame				// var = 0
};

class FePresent 
	: public sf::Drawable
{
	friend void script_do_update( FeBasePresentable * );
private:

	FeSettings *m_feSettings;
	sf::Font *m_currentFont;
	sf::Font &m_defaultFont;
	sf::Font m_layoutFont;
	std::string m_layoutFontName;

	enum MoveState { MoveNone, MoveUp, MoveDown, MovePageUp, MovePageDown };
	MoveState m_moveState;
	sf::Event m_moveEvent;
	sf::Clock m_moveTimer;
	sf::Clock m_movieStartTimer;
	sf::Clock m_layoutTimer;
	sf::Time m_lastInput;

	FeSettings::RotationState m_baseRotation;
	FeSettings::RotationState m_toggleRotation;
	sf::Transform m_rotationTransform;
	sf::Transform m_scaledTransform;

	std::vector<FeBasePresentable *> m_elements;
	std::vector<FeTextureContainer *> m_texturePool;
	std::vector<FeScriptSound *> m_scriptSounds;
	std::vector<std::string> m_ticksList;
	std::vector<std::string> m_transitionList;
	bool m_playMovies;
	bool m_screenSaverActive;

	// flag if a redraw has been triggered during script callback execution
	//
	bool m_redrawTriggered;
	
	FeListBox *m_listBox; // we only keep this ptr so we can get page sizes
	sf::Vector2i m_layoutSize;
	sf::Vector2f m_layoutScale;

	FePresent( const FePresent & );
	FePresent &operator=( const FePresent & );

	void clear();
	void toggle_movie();

	void toggle_rotate( FeSettings::RotationState ); // toggle between none and provided state
	void set_transforms();	

	// Overrides from base classes:
	//
	void draw(sf::RenderTarget& target, sf::RenderStates states) const;

	float get_layout_scale_x() const;
	float get_layout_scale_y() const;

	// Scripting functionality
	//
	void vm_close();
	void vm_init();
	void vm_on_new_layout( const std::string &filename );
	bool vm_on_tick();
	bool vm_on_transition( FeTransitionType, int var, sf::RenderWindow *wnd );

	FeImage *add_image(bool a, const std::string &n, int x, int y, int w, int h);
	FeImage *add_clone(FeImage *);
	FeText *add_text(const std::string &n, int x, int y, int w, int h);
	FeListBox *add_listbox(int x, int y, int w, int h);
	FeScriptSound *add_sound(const std::string &n);
	void add_ticks_callback(const std::string &);
	void add_transition_callback(const std::string &);
	int get_layout_width() const;
	int get_layout_height() const;
	int get_layout_orient() const;
	const char *get_layout_font() const;
	void set_layout_width( int );
	void set_layout_height( int );
	void set_layout_orient( int );
	void set_layout_font( const char * );

public:
	FePresent( FeSettings *fesettings, sf::Font &defaultfont );
	~FePresent( void );

	void load_screensaver( sf::RenderWindow *wnd );
	void load_layout( sf::RenderWindow *wnd );
	int update( bool reload_list=false );

	bool tick( sf::RenderWindow *w ); // return true if display refresh required
	void stop( sf::RenderWindow *w );
	void pre_run( sf::RenderWindow *w );
	void post_run( sf::RenderWindow *w );
	void toggle_mute();

	bool handle_event( FeInputMap::Command, sf::Event ev, sf::RenderWindow *w );

	FeSettings *get_fes() const { return m_feSettings; };
	int get_page_size() const;
	const sf::Transform &get_rotation_transform() const;
	const sf::Font *get_font() const;
	void set_default_font( sf::Font &f );

	void perform_autorotate();
	
	void flag_redraw();

	static FeImage *cb_add_image(const char *,int, int, int, int);
	static FeImage *cb_add_image(const char *, int, int);
	static FeImage *cb_add_image(const char *);
	static FeImage *cb_add_artwork(const char *,int, int, int, int);
	static FeImage *cb_add_artwork(const char *, int, int);
	static FeImage *cb_add_artwork(const char *);
	static FeImage *cb_add_clone(FeImage *);
	static FeText *cb_add_text(const char *,int, int, int, int);
	static FeListBox *cb_add_listbox(int, int, int, int);
	static FeScriptSound *cb_add_sound(const char *);
	static void cb_add_ticks_callback(const char *);
	static void cb_add_transition_callback(const char *);
	static bool cb_is_keypressed(int);
	static bool cb_is_joybuttonpressed(int,int);
	static float cb_get_joyaxispos(int,int);
	static void do_nut(const char *);
	static const char *cb_game_info(int,int);
	static const char *cb_game_info(int);
};

#endif