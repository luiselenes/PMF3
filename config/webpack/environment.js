const { environment } = require('@rails/webpacker')
<<<<<<< HEAD
const webpack = require('webpack')
<<<<<<< HEAD
=======

environment.plugins.prepend(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        jquery: 'jquery',
        'window.jQuery': 'jquery',
        Popper: ['popper.js','default'],
    })
)

>>>>>>> origin/feature/carlos/VistaRecorrido
module.exports = environment

environment.plugins.prepend(
	'Provide',
	new webpack.ProvidePlugin({
	$: 'jquery',
	jQuery: 'jquery',
	jQuery: 'jquery',
	'window.jQuery': 'jquery',
	 Popper:['popper.js','default'],
	})
)
=======
>>>>>>> parent of 5970c25... Ruta_correcta_vista

module.exports = environment
