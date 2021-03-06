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

LOCAL_CFLAGS := $(GLOBAL_CFLAGS) -D__DOOM_DLL__
LOCAL_CPPFLAGS := -fexceptions -frtti

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    CmdSystem.cpp      DeclManager.cpp   File.cpp \
    Common.cpp         DeclParticle.cpp  FileSystem.cpp \
    Compressor.cpp     DeclPDA.cpp       KeyInput.cpp \
    Console.cpp        DeclSkin.cpp      Session.cpp \
    CVarSystem.cpp     DeclTable.cpp     Session_menu.cpp \
    DeclAF.cpp         DemoFile.cpp      Unzip.cpp \
    DeclEntityDef.cpp  EditField.cpp     UsercmdGen.cpp \
    DeclFX.cpp         EventLoop.cpp

LOCAL_SRC_FILES += \
    async/AsyncClient.cpp   async/AsyncServer.cpp  async/NetworkSystem.cpp \
    async/AsyncNetwork.cpp  async/MsgChannel.cpp   async/ServerScan.cpp

LOCAL_MODULE := libframework

include $(BUILD_STATIC_LIBRARY)
