#
# Doom 3 GPL Source Code
# Copyright (C) 1999-2011 id Software LLC, a ZeniMax Media company.
# Copyright (C) 2012 Havlena Petr <havlenapetr@gmail.com>
# 
# This file is part of the Doom 3 GPL Source Code (?Doom 3 Source Code?).
# 
# Doom 3 Source Code is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Doom 3 Source Code is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Doom 3 Source Code.  If not, see <http://www.gnu.org/licenses/>.

# In addition, the Doom 3 Source Code is also subject to certain additional
# terms. You should have received a copy of these # additional terms immediately
# following the terms and conditions of the GNU General Public License which
# accompanied the # Doom 3 Source Code.  If not, please request a copy in writing
# from id Software at the address below.
# 
# If you have questions concerning this license or the applicable additional
# terms, you may contact in writing:
# id Software # LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS) -DGAME_DLL
LOCAL_CPPFLAGS := -fexceptions -frtti

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    ai/AAS.cpp \
    ai/AAS_debug.cpp \
    ai/AAS_pathing.cpp \
    ai/AAS_routing.cpp \
    ai/AI.cpp \
    ai/AI_events.cpp \
    ai/AI_pathing.cpp \
    ai/AI_Vagary.cpp \
    anim/Anim.cpp \
    anim/Anim_Blend.cpp \
    anim/Anim_Import.cpp \
    anim/Anim_Testmodel.cpp \
    gamesys/Class.cpp \
    gamesys/DebugGraph.cpp \
    gamesys/Event.cpp \
    gamesys/SaveGame.cpp \
    gamesys/SysCmds.cpp \
    gamesys/SysCvar.cpp \
    gamesys/TypeInfo.cpp \
    physics/Clip.cpp \
    physics/Force.cpp \
    physics/Force_Constant.cpp \
    physics/Force_Drag.cpp \
    physics/Force_Field.cpp \
    physics/Force_Spring.cpp \
    physics/Physics.cpp \
    physics/Physics_Actor.cpp \
    physics/Physics_AF.cpp \
    physics/Physics_Base.cpp \
    physics/Physics_Monster.cpp \
    physics/Physics_Parametric.cpp \
    physics/Physics_Player.cpp \
    physics/Physics_RigidBody.cpp \
    physics/Physics_Static.cpp \
    physics/Physics_StaticMulti.cpp \
    physics/Push.cpp \
    script/Script_Compiler.cpp \
    script/Script_Interpreter.cpp \
    script/Script_Program.cpp \
    script/Script_Thread.cpp \
    Actor.cpp \
    AF.cpp \
    AFEntity.cpp \
    BrittleFracture.cpp \
    Camera.cpp \
    Entity.cpp \
    Fx.cpp \
    Game_local.cpp \
    Game_network.cpp \
    GameEdit.cpp \
    IK.cpp \
    Item.cpp \
    Light.cpp \
    Misc.cpp \
    Moveable.cpp \
    Mover.cpp \
    MultiplayerGame.cpp \
    Player.cpp \
    PlayerIcon.cpp \
    PlayerView.cpp \
    Projectile.cpp \
    Pvs.cpp \
    SecurityCamera.cpp \
    SmokeParticles.cpp \
    Sound.cpp \
    Target.cpp \
    Trigger.cpp \
    Weapon.cpp \
    WorldSpawn.cpp

LOCAL_MODULE := libgame

LOCAL_STATIC_LIBRARIES := libid

ifeq ($(APP_DEBUGGABLE),true)
LOCAL_C_INCLUDES += $(PROFILER_INCLUDE_DIR)
LOCAL_STATIC_LIBRARIES += libandprof
LOCAL_LDLIBS := -llog
endif

include $(BUILD_SHARED_LIBRARY)
