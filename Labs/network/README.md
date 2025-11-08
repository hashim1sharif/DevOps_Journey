Open Systems interconnection model (OSI Model) is more of reference a guideline to help us understand what the comminucation process entails.

![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/042934aa0855397a2e434ca26abc1a982d2c7e0d/network/Screenshot%202025-08-18%20160220.png)

![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/02bd8ea5897cf95f0d05df76fdc012b9c0db71cf/network/Screenshot%202025-08-18%20160613.png)

![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/f2ec69d973af1d9bae4247af3dd8357274eb801e/network/Screenshot%202025-08-18%20160558.png)

![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/223d8546bf84dd62452dbfda74651a7ba98f5ff3/network/Screenshot%202025-08-18%20160546.png)

The comminucation process entails both directions, going down the stuck is what we call (Encapsulating) and going up the stack we call (Decapsulation).

Layer 7, layer 6 and layer 5 can be group together and they produce to transpot layer Date 10101010110 (Protocal Data Unit: PDU).

Trasport layer: is going to identify what application make request and which service receive and the way is going to identify them is to port addresses (443 or 88 (HTTPS or HTTP)) its giong to be a source and destination.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/ce07c380f7cbfcbdb75c35a50646a2c4fad4d443/network/Screenshot%202025-08-18%20160531.png)
Data will be breaks up with pieces and we call that Segment, the reason we break up data is for security, performance and we can also allow multiple communications at the same time which we call multiplexing.

The protocol tha defined segment is TCP (Transmission Control Protocol)and the other protocol is UDP (User Data Protocol)

            TCP

Characteristics:

Stands for Transmission Control Protocol.
Connection oriented.
Requires "handshake"
Reliable data transfer.

Function:

Ensures data is delivered in order.
Error checking and flow control.
Any bidirectional communication.

            UDP

Chracteristics:

Stand for User Datagram Protocol
Simple protocol to send and receive data
Prior communication not required -(can be a double-edged sword)
Connectionless
Fast but less relaible (since theres no connection set up, unless error checking UDP is much faster than TCP )

Funtcions:

Suitable for real time applicatins (e.g., video straaming)
DNS
VPN (Virtual Private Network) you may use before i work or other places, some VPN protocol use UDP because its faster and works better for streaming and real time applications.

Network layer: we passed that Segment down to the Network layer and it becames Packet.
The protocol that makes Segment into Packet is IP and with IP we have Source and Destination address.

Network layer is to identify devices on the network.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/d5d6d9b1be877050de391bdd312ae22fbfabf90e/network/Screenshot%202025-08-18%20160503.png)

Data Link: the packet gets passed down to the Data link and it becomes Frame. this layer provides node to node transfer and detects, possibly corrects, errors that may occur in the Physical layer. it ensures that data is transferred correctly between adjecent network nodes.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/51c0dfa89ea4816988ca42890a72e6aa4ccac2ec/network/Screenshot%202025-08-18%20160445.png)
Physisca layer: transmits raw bit stream over physical medium.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/c56afbfd43286dcb3a9379595d28abda5bb93452/network/Screenshot%202025-08-18%20160427.png)
Components:

Cabels, weitches and network interface cards.
![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/36ab0cd4f2912f9a95385c556047919054703c14/network/Screenshot%202025-08-18%20160256.png)

            Domain Name System

DNS is the internet's directory, it translates human-readble domain names, sush as google.com to machine-readable IP addresses.

There are three main levels of authoritative DNS servers.

1: Root Nameservers.
2: Top Level Domanian Nameservers. (TLD)
3: Authoritative Nameservers.

![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/97c9a2bae642f04597cc6cab18a00094dd3594f6/Screenshot%202025-08-22%20165803.png)

![Image Alt](https://github.com/hashim1sharif/DevOps-Journey/blob/75e450a0e811f35fa68c4e41ff8150a01e3add8e/network/Screenshot%202025-08-18%20152145.png)


        ROUTING 

Definition: Procecc of determining paths for data to travel across networks.

Important: Ensures data reaches destination efficiently fundamental for internet functionality.

Routers determine the best path and what they use is routing tables to make decisions.

Router is the component and routing tables is what they actually use which are basically like a map to help them decide where to send the data.


        Subnetting

Dividing a network into smaller networks.


Classless Inter Domain Routing (CIDR)

CIDR: is a method for allocating IP addresses and routing IP packets.