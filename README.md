# Network Traffic Feature Extractor

This tool captures network traffic from the terminal on the Ethernet interface for 30s with the help of the underlying library used by Wireshark, tshark, and extracts the features in the traffic deemed important. Only TCP protocol dependent traffic is focused on here. The traffic is analyzed by converting data to bidirectional flows with an unlimited termination time. This tool was created to allow easy analysis of flow data while maintaining singular packet data. This helps in identifying all the packets involved in a flow for later packet-wise processing, if required.  

## Getting Started

Download both the files provided. Run the capture.sh script to create the CSV file which is used by the tool, then run the python file for the analysis.

### Prerequisites

The following must be installed on your system to successfully use this tool.
Python >3.0
Pandas Python library
Tshark library (If you have Wireshark installed then you will automatically have Tshark on your computer too).

### Further Details

The capture time can be changed from 30 seconds to any other value by changing the value in the capture.sh file

```
timeout 30s tshark
```
Currently the tool summarizes flow data into the following fields: 
* Duration of the flow (duration)
* Minumum packet length in a flow (tcp len min)
* Maximum packet length in a flow (tcp len max)
* Mean packet length in a flow (tcp len mean)
* Standard deviation of the packet length in a flow (tcp len std)
* Inter-arrival (IAT) time between the packets of a flow (min, max, std)

## Next Steps 

This tool is currently being upgraded to be able to handle continous traffic. Also, more feature extraction will be added soon. 

## Built With

* [Tshark](https://www.wireshark.org/docs/man-pages/tshark.html) -  Network protocol analyzer
* [Pandas](https://pandas.pydata.org) - Python Data Analysis Library

## Contributing

For contribuitions, please submit a pull request. 

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](https://github.com/MahnurA/Feature-Extractor/blob/master/LICENSE) file for details

## Acknowledgments

* Inspiration - [CICFLowMeter](https://github.com/ISCX/CICFlowMeter/blob/master/src/main/java/cic/cs/unb/ca/weka/ClusterWorker.java) - A network traffic Bi-flow generator and analyzer for anomaly detection.

