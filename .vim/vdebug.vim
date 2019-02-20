if ! exists('g:vdebug_options')
    let g:vdebug_options = { 'path_maps': {} }
endif

" let g:vdebug_options['path_maps']['/srv/sources/another-wordpress-classifieds-plugin'] = '/Users/wvega/Projects/drodenbaugh/another-wordpress-classifieds-plugin'
" let g:vdebug_options['path_maps']['/srv/www/custom/another-wordpress-classfieds-plugin'] = '/Users/wvega/Projects/drodenbaugh/another-wordpress-classifieds-plugin/vvv-site'
"
" let g:vdebug_options['path_maps']['/srv/sources/business-directory-plugin'] = '/Users/wvega/Projects/drodenbaugh/business-directory-plugin'
" let g:vdebug_options['path_maps']['/srv/www/business-directory-plugin'] = '/Users/wvega/Projects/drodenbaugh/business-directory-plugin/vvv-site'
"
" let g:vdebug_options['path_maps']['/srv/sources/next-another-wordpress-classifieds-plugin'] = '/Users/wvega/Projects/drodenbaugh/next-another-wordpress-classifieds-plugin'
" let g:vdebug_options['path_maps']['/srv/www/custom/next-another-wordpress-classifieds-plugin'] = '/Users/wvega/Projects/drodenbaugh/next-another-wordpress-classifieds-plugin/vvv-site'
"
" let g:vdebug_options['path_maps']['/srv/sources/wholesalescrubsets'] = '/Users/wvega/Projects/wholesalescrubsets'
" let g:vdebug_options['path_maps']['/srv/www/custom/wholesalescrubsets'] = '/Users/wvega/Projects/wholesalescrubsets/vvv-site'

let g:vdebug_options['break_on_open'] = 0

" Use the compact window layout.
let g:vdebug_options['watch_window_style'] = 'compact'


if ! exists('g:vdebug_features')
    let g:vdebug_features = {}
endif

" Max number of array or object children to initially retrieve.
let g:vdebug_features['max_children'] = 128


if ! exists('g:vdebug_keymap')
    let g:vdebug_keymap = {}
endif

let g:vdebug_keymap['run'] = '<M-C-Right>'
let g:vdebug_keymap['step_over'] = '<M-C-Left>'
let g:vdebug_keymap['step_into'] = '<M-C-Down>'
let g:vdebug_keymap['step_out'] = '<M-C-Up>'
let g:vdebug_keymap['run_to_cursor'] = '<M-C-S-Right>'
let g:vdebug_keymap['set_breakpoint'] = '<M-C-S-Left>'
let g:vdebug_keymap['get_context'] = '<M-C-S-Down>'
let g:vdebug_keymap['close'] = '<M-C-S-Up>'
let g:vdebug_keymap['eval_under_cursor'] = '<D-d>'

" " Need to set as empty for this to work with Vagrant boxes.
" " http://www.mediacurrent.com/blog/debug-drupal-php-vim-vdebug
" let g:vdebug_options['server'] = ""
