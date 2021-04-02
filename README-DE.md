# adjustable_high_voltage_source
Dieses Projekt ist im Zuge des [contactless electrostatic grippers](https://github.com/Fersaar/contactless_electrostatic_gripper) entstanden. Um die einzelnen Greiferzonen regeln zu könnnen, müssen sie mit einer variablen Spannung zwischen 0V und 1000V gespeist werden können. Der dabei notwendige Strom ist quasi null, da nur die einzelen Greiferelektoden geladen werden müssen. Im späteren Greiferaufbau sitzt die Schaltung zwischen Mikrocontroller und Greifer. 

## Anforderungen

- Variable Spannung zwischen 0 und 1000V
- exteren Speisung mit 1000V DC
- lineare Spannungsregelung
- Eingang: PWM-Signal mit 3,3V und variablem Duty-Cycle
- Grenzfrequenz 1kHz
- möglichst günstig und einfach


## Design

 Basis bildet eine Halbbrückenschaltung mit Treiber "FAN73912mx". Dieser kann bis zu 1200V aushalten, ist aber nicht isoliert, weshalb alle GND-Potentiale verbunden sein müssen. Die restliche Schaltung orientiert sich an dem Refenzdesign des Treibers mit einer Bootstrap-Schaltung zur Schaltung der Mosfets. Der Ausgang wird schließlich über ein RC-Glied gefiltert, um das PWM Signal zu entfernen und eine Gleichspannung zu erhalten. Die Schaltfrequenz liegt bei 20kHz. Das Design ist sicher nicht optimal aber es tut was es soll und ist für den Anwendungsfall vollkommen ausreichend.

![Circuit](Images/circuit.jpg)

## Schaltung

Die fertige Platine ist so gefertigt, dass mehrere über einander gestapelt und die Versorgungsleitungen durchgeschleift werden können. 

|  |   |
|--|---|
| ![PCB](Images/pcb.jpg)|![HBrücken](Images/h_bridge.jpg) |
| einzelne Halbbrücke|gestapelte Halbbrücken |


Der Ruhestrom liegt bei 1000V und 20 kHz bei ca. 3 mA. Die minmale Spannungsauflösung ist von der PWM Auflösung abhähig und beträgt z.B. bei einem 12 bit Signal ca 0.244 V.

Die Spannung lässt sich wie gewünscht linear regeln:
![Voltage_over_PWM](Images/voltage_pwm.png)

### BOM

| Part                                       | Quantity | Link                        |                    |
|--------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------|---------------|
| fan73912mx                                                               | 1        | https://de.farnell.com/on-semiconductor/fan73912mx/gate-treiber-halbbr-cke-wsoic/dp/2748785?st=fan73912mx | IC1           |
| Elektrolytkondensator,   4.7 µF, 50 V                                    | 1        | https://de.farnell.com/rubycon/50yxf4r7mefc5x11/kondensator-4-7-f-50v-20/dp/2811491                       | C2            |
| Keramikvielschichtkondensator,   0.47 µF, 50 V                           | 1        | https://de.farnell.com/murata/rder71h474k1m1h03a/kondensator-0-47uf-50v-mlcc-radial/dp/2990810            | C1   C_Boot   |
| 47 Ohm,   +-5%, 350V                                                     | 2        | https://de.farnell.com/multicomp/mcf-0-5w-47r/kohlesch-widerstand-47r-5-500mw/dp/9338802                  | R1&R2         |
| Widerstand   1210 [Metrisch 3225], 2.2 ohm, KTR Series, 600 V            | 3        | https://de.farnell.com/rohm/ktr25jzpf2r20/dickschichtwiderstand-2r2-1-1210/dp/2802500                     | R3-R7         |
| Diode 1.2 kV, 1 A, Einfach, 1.65 V, 75 ns, 18 A                          | 1        | https://de.farnell.com/stmicroelectronics/stth112u/diode-ku-erholzeit-1a-1200v-smd/dp/1467508             | D1            |
| MOSFET,   n-Kanal, 1.5 kV, 1.3 A, 6 ohm                                  | 2        | https://de.farnell.com/stmicroelectronics/stw3n150/mosfet-n-kanal-1500v-2-5a-to-247/dp/1752211?st=mosfet  | Q1, Q2        |
| Schraubklemme   2 polig                                                  | 4        | https://de.farnell.com/lumberg/krm-02/klemme-leiterpl-polyamid-2pol/dp/1177875                            | J2,J4, J6, J7 |
| Schraubklemme   3 polig                                                  | 4        | https://de.farnell.com/camdenboss/ctbp5000-3/klemmenblock-wire-to-board-3pos/dp/2527548                   | J1,J2,J4      |
| Keramikscheibenkondensator,   100 pF, 3 kV, F Series, ± 10%, S3N, 7.5 mm | 1        | https://de.farnell.com/vishay/f101k25s3nr63k7r/kondensator-100pf-3-kv-10-s3n/dp/2860045                   | C3            |
| 3MOhm,   2kV, +-5%                                                       | 1        | https://de.farnell.com/multicomp/mchvr0ajtfu3004/dicksch-widerstand-3m-5-0-5w-2010/dp/2826728             | R10           |
| 3MOhm,   2kV, +-5%                                                       | 1        | https://de.farnell.com/multicomp/mchvr0ajtfu3004/dicksch-widerstand-3m-5-0-5w-2010/dp/2826728             |               |


