/bin/sh -xe
Den=$(date | cut –d „ „ –f 1)

Case $den in
Mon|Tue)
	Echo Eh, to lazy to start yet;;
Wed|)
	Echo oh, yes i am about to start;;
Thur|Fri)
	Echo okay, lets do it;;
*)
	Echo sorry, but i dont work overtimes;;
Esac
