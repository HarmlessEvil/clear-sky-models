/**
 Copyright (c) 2015 Eric Bruneton
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.

 3. Neither the name of the copyright holder nor the names of its contributors
 may be used to endorse or promote products derived from this software without
 specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
#ifndef ATMOSPHERE_COMPARISONS_H_
#define ATMOSPHERE_COMPARISONS_H_

#include <string>
#include <vector>

#include "atmosphere/atmosphere.h"
#include "atmosphere/measurement/measured_atmospheres.h"
#include "math/angle.h"
#include "physics/units.h"

class Comparisons {
 public:
  Comparisons(const std::string& name, const Atmosphere& atmosphere,
      const MeasuredAtmospheres& reference, Wavelength min_wavelength,
      Wavelength max_wavelength);

  void PlotSunIlluminanceAttenuation() const;

  void PlotRadiance(const std::string& name, Angle sun_zenith,
      Angle sun_azimuth, Angle view_zenith, Angle view_azimuth) const;

  void RenderLuminanceAndImage(const std::string& name, Angle sun_zenith,
      Angle sun_azimuth) const;

  void PlotLuminanceProfile(const std::string& name, Angle sun_zenith,
      Angle sun_azimuth) const;

  void PlotRelativeError(const std::string& name,
      Angle sun_zenith, Angle sun_azimuth) const;

  void PlotRelativeError(const std::string& name, const Atmosphere& reference,
      Angle sun_zenith, Angle sun_azimuth) const;

  Radiance ComputeZenithLuminance(Angle sun_zenith) const;
  void ComputeIrradiance(Angle sun_zenith, Irradiance* sun,
      Irradiance* sky) const;

  void PlotDayZenithLuminance(const std::vector<Angle>& sun_zenith,
      const std::vector<Radiance>& zenith_luminance) const;
  void PlotDayIrradiance(const std::vector<Angle>& sun_zenith,
      const std::vector<Irradiance>& sun,
      const std::vector<Irradiance>& sky) const;

  static void SaveErrorCaption(bool png_output);
  static void SaveScaleCaption(bool png_output);

 private:
  std::string name_;
  const Atmosphere& atmosphere_;
  const MeasuredAtmospheres& reference_;
  Wavelength min_wavelength_;
  Wavelength max_wavelength_;
};

#endif  // ATMOSPHERE_COMPARISONS_H_
