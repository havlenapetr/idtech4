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

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)
LOCAL_CPPFLAGS := -fexceptions -frtti

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    bv/Bounds.cpp \
    bv/Box.cpp \
    bv/Frustum.cpp \
    bv/Frustum_gcc.cpp \
    bv/Sphere.cpp \
    containers/HashIndex.cpp \
    geometry/DrawVert.cpp \
    geometry/JointTransform.cpp \
    geometry/Surface.cpp \
    geometry/Surface_Patch.cpp \
    geometry/Surface_Polytope.cpp \
    geometry/Surface_SweptSpline.cpp \
    geometry/TraceModel.cpp \
    geometry/Winding.cpp \
    geometry/Winding2D.cpp \
    hashing/CRC32.cpp \
    hashing/MD4.cpp \
    hashing/MD5.cpp \
    math/Angles.cpp \
    math/Complex.cpp \
    math/Lcp.cpp \
    math/Math.cpp \
    math/Matrix.cpp \
    math/Ode.cpp \
    math/Plane.cpp \
    math/Pluecker.cpp \
    math/Polynomial.cpp \
    math/Quat.cpp \
    math/Rotation.cpp \
    math/Simd.cpp

LOCAL_SRC_FILES += \
    math/Simd_Generic.cpp \
    math/Simd_ARM.cpp \
    math/Vector.cpp \
    Base64.cpp \
    CmdArgs.cpp \
    Lexer.cpp \
    Parser.cpp \
    Str.cpp \
    Token.cpp \
    BitMsg.cpp \
    Dict.cpp \
    Heap.cpp \
    LangDict.cpp \
    Lib.cpp \
    MapFile.cpp \
    precompiled.cpp

LOCAL_SRC_FILES += \
    Timer.cpp

LOCAL_MODULE := libid

include $(BUILD_STATIC_LIBRARY)
