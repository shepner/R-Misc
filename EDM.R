##### reference info#####

#http://www.sentex.ca/~mec1995/gadgets/shunts/shunts.html
#http://www.rc-electronics-usa.com/current-shunt.html

#solenoid info
#http://www.electromechanicsonline.com/product.asp?pid=37
#http://www.solenoidcity.com/solenoid/openframe/s-18-100qp1.htm

##### toroid #####

T1w1V<-20  #Toroid 1 winding 1 - Voltage
T1w1A<-5   #Toroid 1 winding 1 - Amp
T1w2V<-20  #Toroid 1 winding 2 - Voltage
T1w2A<-5   #Toroid 1 winding 2 - Amp
T2w1V<-20  #Toroid 2 winding 1 - Voltage
T2w1A<-5   #Toroid 2 winding 1 - Amp
T2w2V<-20  #Toroid 2 winding 2 - Voltage
T2w2A<-5   #Toroid 2 winding 2 - Amp
#connect the windings in series
T1V<-T1w1V+T1w2V
T1A<-T1w1A
#connect the windings in series
T2V<-T2w1V+T2w2V
T2A<-T2w1A
#connect the toroids in parallel
TV<-T1V
TAmax<-T1A+T2A  #max cont current
TA<-TAmax*.8  #how much current we will use
W<-TV*TA    #max cont power
W

W<-300
##### Rectifier #####

Rectifier_A<-TA*2  #get one rated for at least this current
V<-TV*1.414 #conversion from AC to DC
V

V<-35 #this is what was measured under 68W load
A<-W/V  #current for the rest of the circuit
A

##### Solenoid #####

#Solenoid specs:  continuous duty: 7.5W;  72V; 667ohm  #specs
#Solenoid specs:  continuous duty: 7.5W;  73.9V; 705ohm
#Solenoid specs:  continuous duty: 7.5W;  30.1V; 117ohm
#Solenoid specs:  continuous duty: 7.5W;  36.5V; 185ohm
Solenoid_R<-117  #resistance of solenoid coil 
Solenoid_W<-7.5  #wattage of solenoid coil
Solenoid_A<-Solenoid_W/V  #current passing through solenoid coil
Solenoid_A

##### Solenoid Shunt #####

Shunt_A<-A/.5  #shunt can only handle max 66% of rated capacity
Shunt_R<-Solenoid_R / ((A/Solenoid_A)-1)
Shunt_R

##### Load Resistor #####

V/A  #total resistance needed for laod


