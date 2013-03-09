local PART = {}

PART.ClassName = "shake"
PART.NonPhysical = true

pac.StartStorableVars()
	pac.GetSet(PART, "Amplitude", 1)
	pac.GetSet(PART, "Frequency", 1)
	pac.GetSet(PART, "Duration", 0.5)
	pac.GetSet(PART, "Radius", 100)
pac.EndStorableVars()

function PART:OnShow(from_event)
	if from_event and not self:IsHidden() then
		util.ScreenShake(self:GetDrawPosition(), self.Amplitude, self.Frequency, math.Clamp(self.Duration, 0.0001, 2), math.Clamp(self.Radius, 0.0001, 500))
	end
end

pac.RegisterPart(PART)