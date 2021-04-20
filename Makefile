#YNXMAKEFILEGEN
#	This Makefile generated by ynxmakefilegen on 2019-04-02
#		Copyright 2019 Yannix Technologies

SHELL 		= 	/bin/sh

#	Install nuke path
NUKE_INSTALLED_PATH		= 	/opt/Nuke12.0v8

############################################################


all: libynxlensdistortionengines.so YnxRollingShutterNode.so
	

InvertWarpFuncs.o: InvertWarpFuncs.c++ InvertWarpFuncs.h \
 RollingShutterLensDistortionEngine.h
	/usr/bin/g++-4.8 -fPIC -Wall -std=c++11 -DGL_GLEXT_PROTOTYPES -DYNX_STANDALONE      -DNDEBUG -O3 -funroll-loops -finline-functions -o InvertWarpFuncs.o -c InvertWarpFuncs.c++ 

RollingShutterLensDistortionEngine.o: \
 RollingShutterLensDistortionEngine.c++ \
 RollingShutterLensDistortionEngine.h InvertWarpFuncs.h
	/usr/bin/g++-4.8 -fPIC -Wall -std=c++11 -DGL_GLEXT_PROTOTYPES -DYNX_STANDALONE      -DNDEBUG -O3 -funroll-loops -finline-functions -o RollingShutterLensDistortionEngine.o -c RollingShutterLensDistortionEngine.c++ 

YnxRollingShutterNode.o: YnxRollingShutterNode.c++ \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Tile.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/RawGeneralTile.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/GeneralTile.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Box.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/DDImage_API.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ChannelSet.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Channel.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Hash.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Interest.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Iop.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Op.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Channel.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ddImageVersion.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ddImageVersionNumbers.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Description.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ddImageVersion.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Hash.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/OutputContext.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/DDImage_API.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ProxyContext.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Vector2.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/FloatFunctions.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Box.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Deprecation.h \
 ${NUKE_INSTALLED_PATH}/include/Build/fnBuild.h \
 ${NUKE_INSTALLED_PATH}/include/Build/OS/fnLinux.h \
 ${NUKE_INSTALLED_PATH}/include/Build/Compiler/fnGPlusPlus.h \
 ${NUKE_INSTALLED_PATH}/include/Build/fnMacros.h \
 ${NUKE_INSTALLED_PATH}/include/Build/fnAssert.h \
 ${NUKE_INSTALLED_PATH}/include/Build/fnStaticAssert.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Store.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Vector3.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/DDMath.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Vector2.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ViewerContext.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Box3.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Vector3.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Matrix4.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Vector4.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/GeoInfo.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Box3.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Channel3D.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Matrix3.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/GeoSelection.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/OrderedMap.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Primitive.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Allocators.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/BlockAllocator.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/IAllocator.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/SmallBlockDefinition.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/STLAllocator.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Memory.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Thread.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/IAllocator.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/HeapAllocator.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Attribute.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Vector4.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Matrix3.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Matrix4.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Allocators.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/RefCountedObject.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/RefCountedObject.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/VertexContext.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/MatrixArray.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ChannelSet.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/SubdivisionContext.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Format.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/DDMath.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Menu.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/MenuItemData.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/GlCacheApi.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ViewSet.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/DopeItemFlags.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/OpTimer.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Store.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Format.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/GPUContext.h \
 ${NUKE_INSTALLED_PATH}/include/GL/glew.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/IopInfo.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Info2D.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/GeneralInfo.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/MemoryHolder.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Pixel.h YnxRollingShutterNode.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Iop.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Knobs.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/LookupCurves.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/GeneralInfo.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/MetaKeyFrameKnobI.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Knob.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/OpMessage.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Geo_KnobI.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Axis_KnobI.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/PositionVector_KnobI.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/ValueStuffI.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/SceneView_KnobI.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Row.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/RowCheckMacros.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Filter.h \
 ${NUKE_INSTALLED_PATH}/include/DDImage/Op.h \
 RollingShutterLensDistortionEngine.h
	/usr/bin/g++-4.8 -fPIC -Wall -std=c++11 -DGL_GLEXT_PROTOTYPES -DYNX_STANDALONE -I. -I${NUKE_INSTALLED_PATH}/include/     -DNDEBUG -O3 -funroll-loops -finline-functions -o YnxRollingShutterNode.o -c YnxRollingShutterNode.c++ 

libynxlensdistortionengines.so:  RollingShutterLensDistortionEngine.o InvertWarpFuncs.o
	/usr/bin/g++-4.8    -o libynxlensdistortionengines.so -shared RollingShutterLensDistortionEngine.o InvertWarpFuncs.o     

YnxRollingShutterNode.so:  YnxRollingShutterNode.o
	/usr/bin/g++-4.8    -o YnxRollingShutterNode.so -shared YnxRollingShutterNode.o -L${NUKE_INSTALLED_PATH} -lDDImage -L. -lynxlensdistortionengines    

clean: 
	-/bin/rm InvertWarpFuncs.o RollingShutterLensDistortionEngine.o YnxRollingShutterNode.o libynxlensdistortionengines.so YnxRollingShutterNode.so


.PHONY: all clean test

############################################################
