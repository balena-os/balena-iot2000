deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'iot2000'
	aliases: [ 'iot2000' ]
	name: 'Siemens IOT2000'
	arch: 'i386'
	state: 'experimental'

	instructions: commonImg.instructions

	gettingStartedLink:
		windows: 'https://docs.resin.io/iot2000/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.resin.io/iot2000/nodejs/getting-started/#adding-your-first-device' 
		linux: 'https://docs.resin.io/iot2000/nodejs/getting-started/#adding-your-first-device'

	yocto:
		machine: 'iot2000'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-morty'
		deployArtifact: 'resin-image-iot2000.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	options: [ networkOptions.group ]

	initialization: commonImg.initialization
