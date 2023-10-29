// Threading with inner and outer diameter specification
module thread(id=10, od=11, turns=2, pitch=0.5, orientation=-1)
{
	linear_extrude(height=pitch*turns, twist=360*turns*orientation) translate([(od-id)/4,0]) circle(d=(id+od)/2);
}
// Threading with inner and outer diameter specification, with height parameter
module thread_h(id=10, od=11, h=1, pitch=0.5, orientation=-1)
{
	thread(id, od, h/pitch, pitch, orientation);
}