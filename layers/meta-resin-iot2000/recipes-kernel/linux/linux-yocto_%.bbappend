inherit kernel-resin

# Enable iwlwifi driver which supports the following adapters:
#   Intel Wireless WiFi Link 6250AGN Adapter
#   Intel 6000 Series Wi-Fi Adapters (6200AGN and 6300AGN)
#   Intel WiFi Link 1000BGN
#   Intel Wireless WiFi 5150AGN
#   Intel Wireless WiFi 5100AGN, 5300AGN, and 5350AGN
#   Intel 6005 Series Wi-Fi Adapters
#   Intel 6030 Series Wi-Fi Adapters
#   Intel Wireless WiFi Link 6150BGN 2 Adapter
#   Intel 100 Series Wi-Fi Adapters (100BGN and 130BGN)
#   Intel 2000 Series Wi-Fi Adapters
#   Intel 7260 Wi-Fi Adapter
#   Intel 3160 Wi-Fi Adapter
#   Intel 7265 Wi-Fi Adapter
#   Intel 8260 Wi-Fi Adapter
#   Intel 3165 Wi-Fi Adapter
RESIN_CONFIGS_append = " iwlwifi"
RESIN_CONFIGS[iwlwifi] = " \
    CONFIG_IWLWIFI=m \
"
