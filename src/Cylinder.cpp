# ifndef CYLINDER_CPP
# define CYLINDER_CPP
# include<iostream>
# include<iomanip>
# include "Cylinder.h"
using namespace std;
double pi = 3.141592653589793238462643383279502;
double Cylinder :: SurfaceArea(){
  return pi * 2 * radius * (radius + height);
}

double Cylinder :: Volume(){
  return pi * radius * radius * height;
}

double Cylinder :: Circumference(){
  return pi * 2 * radius;
}

istream & operator>>(istream & in, Cylinder & cldr)
{
  in >> cldr.radius >> cldr.height;
  return in;
}

ostream & operator<<(ostream & out, Cylinder & cldr)
{
  out << fixed << std::setprecision(3) << "Circumference: " << cldr.Circumference() << "\nSurfaceArea: " << cldr.SurfaceArea() << "\nVolume: " << cldr.Volume() << endl;
  return out;
}

# endif
