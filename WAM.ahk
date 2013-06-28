;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAnimationManager;; 
;;;;;;;;;;;;;;;;;;;;;;;
class IUIAnimationManager 
{
  __new(){
		this.__:=ComObjCreate("{4C1FC63A-695C-47E8-A339-1A194BE3D0B8}","{9169896C-AC8D-4e7d-94E5-67FA4DC2F2E8}")
		this._i:={3:"CreateAnimationVariable",4:"ScheduleTransition",5:"CreateStoryboard",6:"FinishAllStoryboards",7:"AbandonAllStoryboards",8:"Update",9:"GetVariableFromTag",10:"GetStoryboardFromTag",11:"GetStatus",12:"SetAnimationMode",13:"Pause",14:"Resume",15:"SetManagerEventHandler",16:"SetCancelPriorityComparison",17:"SetTrimPriorityComparison",18:"SetCompressPriorityComparison",19:"SetConcludePriorityComparison",20:"SetDefaultLongestAcceptableDelay",21:"Shutdown"}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this.__)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
	CreateAnimationVariable(initialValue){
	_Error(DllCall(vt(this.__,3),"ptr",this.__,"double",initialValue,"ptr*",variable),"CreateAnimationVariable")
	return variable
	}

	ScheduleTransition(variable,transition,timeNow){
	return _Error(DllCall(vt(this.__,4),"ptr",this.__,"ptr",variable,"ptr",transition,"double",timeNow),"ScheduleTransition")
	}

	CreateStoryboard(){
	_Error(DllCall(vt(this.__,5),"ptr",this.__,"ptr*",storyboard),"CreateStoryboard")
	return storyboard
	}

	FinishAllStoryboards(completionDeadline){
	return _Error(DllCall(vt(this.__,6),"ptr",this.__,"double",completionDeadline),"FinishAllStoryboards")
	}

	AbandonAllStoryboards(){
	return _Error(DllCall(vt(this.__,7),"ptr",this.__),"AbandonAllStoryboards")
	}

	Update(timeNow){
	_Error(DllCall(vt(this.__,8),"ptr",this.__,"double",timeNow,"uint*",updateResult),"Update")
	return updateResult
	}

	GetVariableFromTag(object,id){
	_Error(DllCall(vt(this.__,9),"ptr",this.__,"ptr",object,"uint",id,"ptr*",variable),"GetVariableFromTag")
	return variable
	}

	GetStoryboardFromTag(object,id){
	_Error(DllCall(vt(this.__,10),"ptr",this.__,"ptr",object,"uint",id,"ptr*",storyboard),"GetStoryboardFromTag")
	return storyboard
	}

	GetStatus(){
	_Error(DllCall(vt(this.__,11),"ptr",this.__,"uint*",status),"GetStatus")
	return status
	}

	SetAnimationMode(mode){
	return _Error(DllCall(vt(this.__,12),"ptr",this.__,"uint",mode),"SetAnimationMode")
	}

	Pause(){
	return _Error(DllCall(vt(this.__,13),"ptr",this.__),"Pause")
	}

	Resume(){
	return _Error(DllCall(vt(this.__,14),"ptr",this.__),"Resume")
	}

	SetManagerEventHandler(handler){
	return _Error(DllCall(vt(this.__,15),"ptr",this.__,"ptr",handler),"SetManagerEventHandler")
	}

	SetCancelPriorityComparison(comparison){
	return _Error(DllCall(vt(this.__,16),"ptr",this.__,"ptr",comparison),"SetCancelPriorityComparison")
	}

	SetTrimPriorityComparison(comparison){
	return _Error(DllCall(vt(this.__,17),"ptr",this.__,"ptr",comparison),"SetTrimPriorityComparison")
	}

	SetCompressPriorityComparison(comparison){
	return _Error(DllCall(vt(this.__,18),"ptr",this.__,"ptr",comparison),"SetCompressPriorityComparison")
	}

	SetConcludePriorityComparison(comparison){
	return _Error(DllCall(vt(this.__,19),"ptr",this.__,"ptr",comparison),"SetConcludePriorityComparison")
	}

	SetDefaultLongestAcceptableDelay(delay){
	return _Error(DllCall(vt(this.__,20),"ptr",this.__,"double",delay),"SetDefaultLongestAcceptableDelay")
	}

	Shutdown(){
	return _Error(DllCall(vt(this.__,21),"ptr",this.__),"Shutdown")
	}
}
;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAnimationVariable;;
;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAnimationVariable
{
	__new(){
		this._p:=0
		this._i:={3:"GetValue",4:"GetFinalValue",5:"GetPreviousValue",6:"GetIntegerValue",7:"GetFinalIntegerValue",8:"GetPreviousIntegerValue",9:"GetCurrentStoryboard",10:"SetLowerBound",11:"SetUpperBound",12:"SetRoundingMode",13:"SetTag",14:"GetTag",15:"SetVariableChangeHandler",16:"SetVariableIntegerChangeHandler"}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
  GetValue(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"double*",value),"GetValue")
	return value
  }

  GetFinalValue(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"double*",finalValue),"GetFinalValue")
	return finalValue
  }

  GetPreviousValue(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"double*",previousValue),"GetPreviousValue")
	return previousValue
  }

  GetIntegerValue(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"int*",value),"GetIntegerValue")
	return value
  }

  GetFinalIntegerValue(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"int*",finalValue),"GetFinalIntegerValue")
	return finalValue
  }

  GetPreviousIntegerValue(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"int*",previousValue),"GetPreviousIntegerValue")
	return previousValue
  }

  GetCurrentStoryboard(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr*",storyboard),"GetCurrentStoryboard")
	return storyboard
  }

  SetLowerBound(bound){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"double",bound),"SetLowerBound")
  }

  SetUpperBound(bound){
	return _Error(DllCall(vt(this._p,11),"ptr",this._p,"double",bound),"SetUpperBound")
  }

  SetRoundingMode(mode){
	return _Error(DllCall(vt(this._p,12),"ptr",this._p,"uint",mode),"SetRoundingMode")
  }

  SetTag(object,id){
	return _Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr",object,"uint",id),"SetTag")
  }

  GetTag(Byref object,Byref id){
	return _Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr*",object,"uint*",id),"GetTag")
  }

  SetVariableChangeHandler(handler){
	return _Error(DllCall(vt(this._p,15),"ptr",this._p,"ptr",handler),"SetVariableChangeHandler")
  }

  SetVariableIntegerChangeHandler(handler){
	return _Error(DllCall(vt(this._p,16),"ptr",this._p,"ptr",handler),"SetVariableIntegerChangeHandler")
  }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAnimationStoryboard;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAnimationStoryboard
{
	__new(){
		this._p:=0
		this._i:={3:"AddTransition",4:"AddKeyframeAtOffset",5:"AddKeyframeAfterTransition",6:"AddTransitionAtKeyframe",7:"AddTransitionBetweenKeyframes",8:"RepeatBetweenKeyframes",9:"HoldVariable",10:"SetLongestAcceptableDelay",11:"Schedule",12:"Conclude",13:"Finish",14:"Abandon",15:"SetTag",16:"GetTag",17:"GetStatus",18:"GetElapsedTime",19:"SetStoryboardEventHandler"}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
  AddTransition(variable,transition){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr",variable,"ptr",transition),"AddTransition")
  }

  AddKeyframeAtOffset(existingKeyframe,offset){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"uint",existingKeyframe,"double",offset,"uint*",keyframe),"AddKeyframeAtOffset")
	return keyframe
  }

  AddKeyframeAfterTransition(transition){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr",transition,"uint*",keyframe),"AddKeyframeAfterTransition")
	return keyframe
  }

  AddTransitionAtKeyframe(variable,transition,startKeyframe){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",variable,"ptr",transition,"uint",startKeyframe),"AddTransitionAtKeyframe")
  }

  AddTransitionBetweenKeyframes(variable,transition,startKeyframe,endKeyframe){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",variable,"ptr",transition,"uint",startKeyframe,"uint",endKeyframe),"AddTransitionBetweenKeyframes")
  }

  RepeatBetweenKeyframes(startKeyframe,endKeyframe,repetitionCount){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"uint",startKeyframe,"uint",endKeyframe,"int",repetitionCount),"RepeatBetweenKeyframes")
  }

  HoldVariable(variable){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",variable),"HoldVariable")
  }

  SetLongestAcceptableDelay(delay){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"double",delay),"SetLongestAcceptableDelay")
  }

  Schedule(timeNow){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"double",timeNow,"uint*",schedulingResult),"Schedule")
	return schedulingResult
  }

  Conclude(){
	return _Error(DllCall(vt(this._p,12),"ptr",this._p),"Conclude")
  }

  Finish(completionDeadline){
	return _Error(DllCall(vt(this._p,13),"ptr",this._p,"double",completionDeadline),"Finish")
  }

  Abandon(){
	return _Error(DllCall(vt(this._p,14),"ptr",this._p),"Abandon")
  }

  SetTag(object,id){
	return _Error(DllCall(vt(this._p,15),"ptr",this._p,"ptr",object,"uint",id),"SetTag")
  }

  GetTag(Byref object,Byref id){
	return _Error(DllCall(vt(this._p,16),"ptr",this._p,"ptr*",object,"uint*",id),"GetTag")
  }

  GetStatus(){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"uint*",status),"GetStatus")
	return status
  }

  GetElapsedTime(){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"double*",elapsedTime),"GetElapsedTime")
	return elapsedTime
  }

  SetStoryboardEventHandler(handler){
	return _Error(DllCall(vt(this._p,19),"ptr",this._p,"ptr",handler),"SetStoryboardEventHandler")
  }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAnimationTransition;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAnimationTransition
{
	__new(){
		this._p:=0
		this._i:={3:"SetInitialValue",4:"SetInitialVelocity",5:"IsDurationKnown",6:"GetDuration"}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
  SetInitialValue(value){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"double",value),"SetInitialValue")
  }

  SetInitialVelocity(velocity){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"double",velocity),"SetInitialVelocity")
  }

  IsDurationKnown(){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p),"IsDurationKnown")
  }

  GetDuration(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"double*",duration),"GetDuration")
	return duration
  }
}
;;;;;;;;;;;;;;;;;;;;;
;;IUIAnimationTimer;;
;;;;;;;;;;;;;;;;;;;;;
class IUIAnimationTimer
{
  __new(){
		this._p:=ComObjCreate("{BFCD4A0C-06B6-4384-B768-0DAA792C380E}","{6B0EFAD1-A053-41d6-9085-33A689144665}")
		this._i:={3:"SetTimerUpdateHandler",4:"SetTimerEventHandler",5:"Enable",6:"Disable",7:"IsEnabled",8:"GetTime",9:"SetFrameRateThreshold"}
		this._e:={}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this._p)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
  SetTimerUpdateHandler(updateHandler,idleBehavior){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr",updateHandler,"uint",idleBehavior),"SetTimerUpdateHandler")
  }

  SetTimerEventHandler(handler){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",handler),"SetTimerEventHandler")
  }

  Enable(){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p),"Enable")
  }

  Disable(){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p),"Disable")
  }

  IsEnabled(){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p),"IsEnabled")
  }

  GetTime(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"double*",seconds),"GetTime")
	return seconds
  }

  SetFrameRateThreshold(framesPerSecond){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"uint",framesPerSecond),"SetFrameRateThreshold")
  }
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IUIAnimationTransitionLibrary;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
class IUIAnimationTransitionLibrary
{
  __new(){
		this._p:=ComObjCreate("{1D6322AD-AA85-4EF5-A828-86D71067D145}","{CA5A14B1-D24F-48b8-8FE4-C78169BA954E}")
		this._i:={3:"CreateInstantaneousTransition",4:"CreateConstantTransition",5:"CreateDiscreteTransition",6:"CreateLinearTransition",7:"CreateLinearTransitionFromSpeed",8:"CreateSinusoidalTransitionFromVelocity",9:"CreateSinusoidalTransitionFromRange",10:"CreateAccelerateDecelerateTransition",11:"CreateReversalTransition",12:"CreateCubicTransition",13:"CreateSmoothStopTransition",14:"CreateParabolicTransitionFromAcceleration"}
		this._e:={}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		else if this._e.haskey(aName)
			return this[this._e[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this._p)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
		else if this._e.haskey(aName)
			return this[this._e[aName]]()
	}
  CreateInstantaneousTransition(finalValue){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"double",finalValue,"ptr*",transition),"CreateInstantaneousTransition")
	return transition
  }

  CreateConstantTransition(duration){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"double",duration,"ptr*",transition),"CreateConstantTransition")
	return transition
  }

  CreateDiscreteTransition(delay,finalValue,hold){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"double",delay,"double",finalValue,"double",hold,"ptr*",transition),"CreateDiscreteTransition")
	return transition
  }

  CreateLinearTransition(duration,finalValue){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"double",duration,"double",finalValue,"ptr*",transition),"CreateLinearTransition")
	return transition
  }

  CreateLinearTransitionFromSpeed(speed,finalValue){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"double",speed,"double",finalValue,"ptr*",transition),"CreateLinearTransitionFromSpeed")
	return transition
  }

  CreateSinusoidalTransitionFromVelocity(duration,period){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"double",duration,"double",period,"ptr*",transition),"CreateSinusoidalTransitionFromVelocity")
	return transition
  }

  CreateSinusoidalTransitionFromRange(duration,minimumValue,maximumValue,period,slope){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"double",duration,"double",minimumValue,"double",maximumValue,"double",period,"double",slope,"ptr*",transition),"CreateSinusoidalTransitionFromRange")
	return transition
  }

  CreateAccelerateDecelerateTransition(duration,finalValue,accelerationRatio,decelerationRatio){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"double",duration,"double",finalValue,"double",accelerationRatio,"double",decelerationRatio,"ptr*",transition),"CreateAccelerateDecelerateTransition")
	return transition
  }

  CreateReversalTransition(duration){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"double",duration,"ptr*",transition),"CreateReversalTransition")
	return transition
  }

  CreateCubicTransition(duration,finalValue,finalVelocity){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"double",duration,"double",finalValue,"double",finalVelocity,"ptr*",transition),"CreateCubicTransition")
	return transition
  }

  CreateSmoothStopTransition(maximumDuration,finalValue){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"double",maximumDuration,"double",finalValue,"ptr*",transition),"CreateSmoothStopTransition")
	return transition
  }

  CreateParabolicTransitionFromAcceleration(finalValue,finalVelocity,acceleration){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"double",finalValue,"double",finalVelocity,"double",acceleration,"ptr*",transition),"CreateParabolicTransitionFromAcceleration")
	return transition
  }
}

;;;;;;;;;;;;;;;;;;;;;
;;Wrapped Functions;;
;;;;;;;;;;;;;;;;;;;;;
; Create Animation Transition
CreateTransition(interpolator){
	static pFactory:=ComObjCreate("{8A9B1CDD-FCD7-419c-8B44-42FD17DB1887}","{FCD91E03-3E3B-45ad-BBB1-6DFC8153743D}")
	_Error(DllCall(vt(pFactory,3),"ptr",pFactory,"ptr",interpolator,"ptr*",transition),"CreateTransition")
	return transition
}
;;;;;;;;;;;;;;;
;;EventHandle;;
;;;;;;;;;;;;;;;
WAM_event(ptr,type,p*){
	static _t:={ManagerEvent:1,VariableChange:1,VariableIntegerChange:1,StoryboardEvent:2,TimerUpdate:3,TimerClientEvent:1,TimerEvent:3}
		,_d:=RegisterCallback("_Default_Handler","F")
	if InStr(type,"/")=1
		type:=SubStr(type,2),index:=3
	else index:=0
	if !_t.haskey(type){
		msgbox %type% is not supported.
		return
	}
	VarSetCapacity(ptr,(_t[type]+3)*A_PtrSize)
	NumPut(&ptr+A_PtrSize,ptr)
	if index
		loop % _t[type]+3
			NumPut(IsFunc(p[A_Index])?RegisterCallback(p[A_Index],"F"):_d,ptr,A_PtrSize*A_Index)
	else{
		NumPut(_d,ptr,A_PtrSize*1),NumPut(_d,ptr,A_PtrSize*2),NumPut(_d,ptr,A_PtrSize*3)
		loop % _t[type]
			NumPut(IsFunc(p[A_Index])?RegisterCallback(p[A_Index],"F"):_d,ptr,A_PtrSize*(A_Index+3))
	}
	return &ptr
}
_Default_Handler(p*){
	return 0 ; 0x80004002 for querinterface?
}
/*	Sample handle function
	; ManagerEvent
	OnManagerStatusChanged(newStatus,previousStatus){
		return 0
	}
	; VariableChange
	OnValueChanged(storyboard,variable,newValue,previousValue){
		return 0
	}
	; VariableIntegerChange
	OnIntegerValueChanged(storyboard,variable,newValue,previousValue){
		return 0
	}
	; StoryboardEvent
	OnManagerStatusChanged(newStatus,previousStatus){
		return 0
	}
	; TimerUpdate
	OnUpdate(timeNow,result){ ; [out] result 
		return 0
	}
	SetTimerClientEventHandler(handler){
		return 0
	}
	ClearTimerClientEventHandler(){
		return 0
	}
	; TimerClientEvent
	OnTimerClientStatusChanged(newStatus,previousStatus){
		return 0
	}
	; TimerEvent
	OnPreUpdate(){
		return 0
	}
	OnPostUpdate(){
		return 0
	}
	OnRenderingTooSlow(framesPerSecond){
		return 0
	}
*/

;;;;;;;;;;;;;;;;;;
;;Base Functions;;
;;;;;;;;;;;;;;;;;;
vt(p,n){
	return NumGet(NumGet(p+0,"ptr")+n*A_PtrSize,"ptr")
}
GUID(ByRef GUID, sGUID){
    VarSetCapacity(GUID, 16, 0)
    return DllCall("ole32\CLSIDFromString", "wstr", sGUID, "ptr", &GUID) >= 0 ? &GUID : ""
}
_error(a,b){
	static err:={0x8000FFFF:"Catastrophic failure error.",0x80004001:"Not implemented error.",0x8007000E:"Out of memory error.",0x80070057:"One or more arguments are not valid error.",0x80004002:"Interface not supported error.",0x80004003:"Pointer not valid error.",0x80070006:"Handle not valid error.",0x80004004:"Operation aborted error.",0x80004005:"Unspecified error.",0x80070005:"General access denied error.",0x800401E5:"The object identified by this moniker could not be found."} ; //not completed
	if a && (a&=0xFFFFFFFF)
		msgbox, % b " : " (err.haskey(a)?err[a]:a)
	return a
}
