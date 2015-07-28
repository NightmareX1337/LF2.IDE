
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.33440
//  Copyright (c) Microsoft Corporation.  All rights reserved.


// ----- DOS Header:
// Magic:                      0x5a4d
// Bytes on last page:         0x0090
// Pages in file:              0x0003
// Relocations:                0x0000
// Size of header (paragraphs):0x0004
// Min extra paragraphs:       0x0000
// Max extra paragraphs:       0xffff
// Initial (relative) SS:      0x0000
// Initial SP:                 0x00b8
// Checksum:                   0x0000
// Initial IP:                 0x0000
// Initial (relative) CS:      0x0000
// File addr. of reloc table:  0x0040
// Overlay number:             0x0000
// OEM identifier:             0x0000
// OEM info:                   0x0000
// File addr. of COFF header:  0x0080
// ----- COFF/PE Headers:
// Signature:                  0x00004550
// ----- COFF Header:
// Machine:                    0x014c
// Number of sections:         0x0003
// Time-date stamp:            0x4fa6d1f9
// Ptr to symbol table:        0x00000000
// Number of symbols:          0x00000000
// Size of optional header:    0x00e0
// Characteristics:            0x2102
// ----- PE Optional Header (32 bit):
// Magic:                          0x010b
// Major linker version:           0x08
// Minor linker version:           0x00
// Size of code:                   0x0000c000
// Size of init.data:              0x00002000
// Size of uninit.data:            0x00000000
// Addr. of entry point:           0x0000d0ce
// Base of code:                   0x00002000
// Base of data:                   0x0000e000
// Image base:                     0x00400000
// Section alignment:              0x00002000
// File alignment:                 0x00001000
// Major OS version:               0x0004
// Minor OS version:               0x0000
// Major image version:            0x0000
// Minor image version:            0x0000
// Major subsystem version:        0x0004
// Minor subsystem version:        0x0000
// Size of image:                  0x00012000
// Size of headers:                0x00001000
// Checksum:                       0x00000000
// Subsystem:                      0x0003
// DLL characteristics:            0x8540
// Size of stack reserve:          0x00100000
// Size of stack commit:           0x00001000
// Size of heap reserve:           0x00100000
// Size of heap commit:            0x00001000
// Loader flags:                   0x00000000
// Directories:                    0x00000010
// 0x00000000 [0x00000000] address [size] of Export Directory:          
// 0x0000d078 [0x00000053] address [size] of Import Directory:          
// 0x0000e000 [0x000002c8] address [size] of Resource Directory:        
// 0x00000000 [0x00000000] address [size] of Exception Directory:       
// 0x00000000 [0x00000000] address [size] of Security Directory:        
// 0x00010000 [0x0000000c] address [size] of Base Relocation Table:     
// 0x00000000 [0x00000000] address [size] of Debug Directory:           
// 0x00000000 [0x00000000] address [size] of Architecture Specific:     
// 0x00000000 [0x00000000] address [size] of Global Pointer:            
// 0x00000000 [0x00000000] address [size] of TLS Directory:             
// 0x00000000 [0x00000000] address [size] of Load Config Directory:     
// 0x00000000 [0x00000000] address [size] of Bound Import Directory:    
// 0x00002000 [0x00000008] address [size] of Import Address Table:      
// 0x00000000 [0x00000000] address [size] of Delay Load IAT:            
// 0x00002008 [0x00000048] address [size] of CLR Header:                


// Image sections:
//              .text
//              0x0000b0d4 Virtual Size
//              0x00002000 Virtual Address
//              0x0000c000 Size of Raw Data
//              0x00001000 Pointer to Raw Data
//              0x00000000 Pointer to Relocations
//              0x00000000 Pointer to Linenumbers
//                  0x0000 Number of Relocations
//                  0x0000 Number of Linenumbers
//              0x60000020 Characteristics
//                         CNT_CODE
//                         MEM_EXECUTE
//                         MEM_READ

//              .rsrc
//              0x000002c8 Virtual Size
//              0x0000e000 Virtual Address
//              0x00001000 Size of Raw Data
//              0x0000d000 Pointer to Raw Data
//              0x00000000 Pointer to Relocations
//              0x00000000 Pointer to Linenumbers
//                  0x0000 Number of Relocations
//                  0x0000 Number of Linenumbers
//              0x40000040 Characteristics
//                         CNT_INITIALIZED_DATA
//                         MEM_READ

//              .reloc
//              0x0000000c Virtual Size
//              0x00010000 Virtual Address
//              0x00001000 Size of Raw Data
//              0x0000e000 Pointer to Raw Data
//              0x00000000 Pointer to Relocations
//              0x00000000 Pointer to Linenumbers
//                  0x0000 Number of Relocations
//                  0x0000 Number of Linenumbers
//              0x42000040 Characteristics
//                         CNT_INITIALIZED_DATA
//                         MEM_DISCARDABLE
//                         MEM_READ

// Base Relocation Table
//              0x0000d000 Page RVA
//              0x0000000c Block Size
//              0x00000002 Number of Entries
//              Entry 1: Type 0x3 Offset 0x000000d0
//              Entry 2: Type 0x0 Offset 0x00000000

// Import Address Table
//     DLL : mscoree.dll
//              0x00002000 Import Address Table
//              0x0000d0be Import Name Table
//              0          Time Date Stamp
//              0          Index of First Forwarder Reference
//
//              0x0000  _CorDllMain

// Delay Load Import Address Table
// No data.

// Entry point code:
//FF 25 00 20 40 00 


// ----- CLR Header:
// Header size:                        0x00000048
// Major runtime version:              0x0002
// Minor runtime version:              0x0005
// 0x000045f8 [0x00008a80] address [size] of Metadata Directory:        
// Flags:                              0x00000001
// Entry point token:                  0x00000000
// 0x00000000 [0x00000000] address [size] of Resources Directory:       
// 0x00000000 [0x00000000] address [size] of Strong Name Signature:     
// 0x00000000 [0x00000000] address [size] of CodeManager Table:         
// 0x00000000 [0x00000000] address [size] of VTableFixups Directory:    
// 0x00000000 [0x00000000] address [size] of Export Address Table:      
// 0x00000000 [0x00000000] address [size] of Precompile Header:         

// Metadata Header
//    Storage Signature:
//              0x424a5342 Signature
//                  0x0001 Major Version
//                  0x0001 Minor Version
//              0x00000000 Extra Data Offset
//              0x0000000c Version String Length
//              'v2.0.50727' Version String
//    Storage Header:
//                    0x00 Flags
//                  0x0005 Number of Streams
//    Stream 1:
//              0x0000006c Offset
//              0x00004910 Size
//              '#~' Name
//    Stream 2:
//              0x0000497c Offset
//              0x000032e0 Size
//              '#Strings' Name
//    Stream 3:
//              0x00007c5c Offset
//              0x000002ec Size
//              '#US' Name
//    Stream 4:
//              0x00007f48 Offset
//              0x00000010 Size
//              '#GUID' Name
//    Stream 5:
//              0x00007f58 Offset
//              0x00000b28 Size
//              '#Blob' Name

//    Metadata Stream Header:
//              0x00000000 Reserved
//                    0x02 Major
//                    0x00 Minor
//                    0x00 Heaps
//                    0x01 Rid
//      0x0000000901b61757 MaskValid
//      0x000016003301fa00 Sorted

// Code Manager Table:
//  default


// Export Address Table Jumps:
// No data.

// File size            : 61440
// PE header size       : 4096 (496 used)    ( 6.67%)
// PE additional info   : 887               ( 1.44%)
// Num.of PE sections   : 3
// CLR header size     : 72                 ( 0.12%)
// CLR meta-data size  : 35456              (57.71%)
// CLR additional info : 0                  ( 0.00%)
// CLR method headers  : 1135               ( 1.85%)
// Managed code         : 8390              (13.66%)
// Data                 : 8192              (13.33%)
// Unaccounted          : 3212              ( 5.23%)

// Num.of PE sections   : 3
//   .text    - 49152
//   .rsrc    - 4096
//   .reloc   - 4096

// CLR meta-data size  : 35456
//   Module        -    1 (10 bytes)
//   TypeDef       -  109 (1526 bytes)    0 interfaces, 0 explicit layout
//   TypeRef       -   53 (318 bytes)
//   MethodDef     -  557 (7798 bytes)    0 abstract, 0 native, 345 bodies
//   FieldDef      -  158 (948 bytes)     0 constant
//   MemberRef     -   60 (360 bytes)
//   ParamDef      -  924 (5544 bytes)
//   CustomAttribute-   68 (408 bytes)
//   StandAloneSig -   56 (112 bytes)
//   InterfaceImpl -    1 (4 bytes)
//   PropertyMap   -    1 (4 bytes)
//   Property      -   25 (150 bytes)
//   MethodSemantic-  158 (948 bytes)
//   Assembly      -    1 (22 bytes)
//   AssemblyRef   -    4 (80 bytes)
//   EventMap      -    1 (4 bytes)
//   Event         -   62 (372 bytes)
//   Strings       - 13023 bytes
//   Blobs         -  2856 bytes
//   UserStrings   -   748 bytes
//   Guids         -    16 bytes
//   Uncategorized -   205 bytes

// CLR method headers : 1135
//   Num.of method bodies  - 345
//   Num.of fat headers    - 67
//   Num.of tiny headers   - 278
//   Num.of fat sections   - 0
//   Num.of small sections - 3

// Managed code : 8390
//   Ave method size - 24
// Classes defined in this module:
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Class AxWindowsMediaPlayer           (public) (auto) (ansi) 
// Class _WMPOCXEvents_DomainChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DomainChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_ClickEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_ClickEvent       (public) (auto) (ansi) 
// Class _WMPOCXEvents_DoubleClickEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DoubleClickEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_KeyDownEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_KeyDownEvent     (public) (auto) (ansi) 
// Class _WMPOCXEvents_KeyPressEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_KeyPressEvent    (public) (auto) (ansi) 
// Class _WMPOCXEvents_KeyUpEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_KeyUpEvent       (public) (auto) (ansi) 
// Class _WMPOCXEvents_MouseDownEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MouseDownEvent   (public) (auto) (ansi) 
// Class _WMPOCXEvents_MouseMoveEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MouseMoveEvent   (public) (auto) (ansi) 
// Class _WMPOCXEvents_MouseUpEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MouseUpEvent     (public) (auto) (ansi) 
// Class _WMPOCXEvents_DeviceConnectEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DeviceConnectEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_DeviceDisconnectEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DeviceDisconnectEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_DeviceStatusChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DeviceStatusChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_DeviceSyncStateChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DeviceSyncStateChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_DeviceSyncErrorEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DeviceSyncErrorEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CreatePartnershipCompleteEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CreatePartnershipCompleteEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CdromRipStateChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CdromRipStateChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CdromRipMediaErrorEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CdromRipMediaErrorEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CdromBurnStateChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CdromBurnStateChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CdromBurnMediaErrorEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CdromBurnMediaErrorEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CdromBurnErrorEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CdromBurnErrorEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_LibraryConnectEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_LibraryConnectEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_LibraryDisconnectEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_LibraryDisconnectEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_FolderScanStateChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_FolderScanStateChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_StringCollectionChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_StringCollectionChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_MediaCollectionMediaAddedEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MediaCollectionMediaAddedEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_MediaCollectionMediaRemovedEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MediaCollectionMediaRemovedEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_OpenStateChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_OpenStateChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_PlayStateChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_PlayStateChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_AudioLanguageChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_AudioLanguageChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_ScriptCommandEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_ScriptCommandEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_DisconnectEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DisconnectEvent  (public) (auto) (ansi) 
// Class _WMPOCXEvents_BufferingEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_BufferingEvent   (public) (auto) (ansi) 
// Class _WMPOCXEvents_WarningEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_WarningEvent     (public) (auto) (ansi) 
// Class _WMPOCXEvents_EndOfStreamEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_EndOfStreamEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_PositionChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_PositionChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_MarkerHitEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MarkerHitEvent   (public) (auto) (ansi) 
// Class _WMPOCXEvents_DurationUnitChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_DurationUnitChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CdromMediaChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CdromMediaChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_PlaylistChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_PlaylistChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CurrentPlaylistChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CurrentPlaylistChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CurrentPlaylistItemAvailableEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_MediaChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MediaChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CurrentMediaItemAvailableEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CurrentMediaItemAvailableEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_CurrentItemChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_CurrentItemChangeEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MediaCollectionAttributeStringAddedEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MediaCollectionAttributeStringChangedEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent (public) (auto) (ansi) 
// Class _WMPOCXEvents_ModeChangeEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_ModeChangeEvent  (public) (auto) (ansi) 
// Class _WMPOCXEvents_MediaErrorEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_MediaErrorEvent  (public) (auto) (ansi) 
// Class _WMPOCXEvents_OpenPlaylistSwitchEventHandler (public) (auto) (ansi) (sealed) 
// Class _WMPOCXEvents_OpenPlaylistSwitchEvent (public) (auto) (ansi) 
// Class AxWindowsMediaPlayerEventMulticaster (public) (auto) (ansi) 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


// Metadata version: v2.0.50727
.assembly extern /*23000001*/ System.Windows.Forms
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern /*23000002*/ mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern /*23000003*/ Interop.WMPLib
{
  .publickeytoken = (C9 99 60 E8 77 25 74 5A)
  .ver 1:0:0:0
}
.assembly extern /*23000004*/ System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly /*20000001*/ AxInterop.WMPLib
{
  .custom /*0C000003:0A000004*/ instance void [mscorlib/*23000002*/]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute/*01000027*/::.ctor() /* 0A000004 */ = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                                                                          63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom /*0C000004:0A000001*/ instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//TypeLibraryTimeStampAttribute/*01000024*/::.ctor(string) /* 0A000001 */ = ( 01 00 13 32 35 2E 30 38 2E 32 30 31 30 20 32 33   // ...25.08.2010 23
                                                                                                                                                                                                    3A 33 36 3A 30 32 00 00 )                         // :36:02..
  .custom /*0C000005:0A000003*/ instance void [mscorlib/*23000002*/]System.Runtime.CompilerServices.CompilationRelaxationsAttribute/*01000026*/::.ctor(int32) /* 0A000003 */ = ( 01 00 08 00 00 00 00 00 ) 
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module AxInterop.WMPLib.dll
// MVID: {852CC231-2602-48CE-892D-6AFF12D53ED4}
.imagebase 0x00400000
.file alignment 0x00001000
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00300000


// =============== CLASS MEMBERS DECLARATION ===================

.class /*02000002*/ public auto ansi beforefieldinit AxWMPLib.AxWindowsMediaPlayer
       extends [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*/
{
  .custom /*0C000006:0A000006*/ instance void [System/*23000004*/]System.ComponentModel.DesignTimeVisibleAttribute/*01000029*/::.ctor(bool) /* 0A000006 */ = ( 01 00 01 00 00 ) 
  .custom /*0C000007:0A000005*/ instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ClsidAttribute/*01000028*/::.ctor(string) /* 0A000005 */ = ( 01 00 26 7B 36 62 66 35 32 61 35 32 2D 33 39 34   // ..&{6bf52a52-394
                                                                                                                                                                                     61 2D 31 31 64 33 2D 62 31 35 33 2D 30 30 63 30   // a-11d3-b153-00c0
                                                                                                                                                                                     34 66 37 39 66 61 61 36 7D 00 00 )                // 4f79faa6}..
  .field /*04000001*/ private class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ ocx
  .field /*04000002*/ private class AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/ eventMulticaster
  .field /*04000003*/ private class [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ConnectionPointCookie/*01000006*/ cookie
  .field /*04000004*/ private class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ DomainChange
  .field /*04000005*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ SwitchedToPlayerApplication
  .field /*04000006*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ SwitchedToControl
  .field /*04000007*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ PlayerDockedStateChange
  .field /*04000008*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ PlayerReconnect
  .field /*04000009*/ private class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ ClickEvent
  .field /*0400000A*/ private class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ DoubleClickEvent
  .field /*0400000B*/ private class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ KeyDownEvent
  .field /*0400000C*/ private class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ KeyPressEvent
  .field /*0400000D*/ private class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ KeyUpEvent
  .field /*0400000E*/ private class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ MouseDownEvent
  .field /*0400000F*/ private class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ MouseMoveEvent
  .field /*04000010*/ private class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ MouseUpEvent
  .field /*04000011*/ private class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ DeviceConnect
  .field /*04000012*/ private class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ DeviceDisconnect
  .field /*04000013*/ private class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ DeviceStatusChange
  .field /*04000014*/ private class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ DeviceSyncStateChange
  .field /*04000015*/ private class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ DeviceSyncError
  .field /*04000016*/ private class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ CreatePartnershipComplete
  .field /*04000017*/ private class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ CdromRipStateChange
  .field /*04000018*/ private class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ CdromRipMediaError
  .field /*04000019*/ private class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ CdromBurnStateChange
  .field /*0400001A*/ private class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ CdromBurnMediaError
  .field /*0400001B*/ private class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ CdromBurnError
  .field /*0400001C*/ private class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ LibraryConnect
  .field /*0400001D*/ private class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ LibraryDisconnect
  .field /*0400001E*/ private class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ FolderScanStateChange
  .field /*0400001F*/ private class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ StringCollectionChange
  .field /*04000020*/ private class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ MediaCollectionMediaAdded
  .field /*04000021*/ private class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ MediaCollectionMediaRemoved
  .field /*04000022*/ private class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ OpenStateChange
  .field /*04000023*/ private class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ PlayStateChange
  .field /*04000024*/ private class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ AudioLanguageChange
  .field /*04000025*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ StatusChange
  .field /*04000026*/ private class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ ScriptCommand
  .field /*04000027*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ NewStream
  .field /*04000028*/ private class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ Disconnect
  .field /*04000029*/ private class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ Buffering
  .field /*0400002A*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ ErrorEvent
  .field /*0400002B*/ private class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ Warning
  .field /*0400002C*/ private class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ EndOfStream
  .field /*0400002D*/ private class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ PositionChange
  .field /*0400002E*/ private class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ MarkerHit
  .field /*0400002F*/ private class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ DurationUnitChange
  .field /*04000030*/ private class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ CdromMediaChange
  .field /*04000031*/ private class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ PlaylistChange
  .field /*04000032*/ private class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ CurrentPlaylistChange
  .field /*04000033*/ private class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ CurrentPlaylistItemAvailable
  .field /*04000034*/ private class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ MediaChange
  .field /*04000035*/ private class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ CurrentMediaItemAvailable
  .field /*04000036*/ private class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ CurrentItemChange
  .field /*04000037*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ MediaCollectionChange
  .field /*04000038*/ private class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ MediaCollectionAttributeStringAdded
  .field /*04000039*/ private class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ MediaCollectionAttributeStringRemoved
  .field /*0400003A*/ private class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ MediaCollectionAttributeStringChanged
  .field /*0400003B*/ private class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ PlaylistCollectionChange
  .field /*0400003C*/ private class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ PlaylistCollectionPlaylistAdded
  .field /*0400003D*/ private class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ PlaylistCollectionPlaylistRemoved
  .field /*0400003E*/ private class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ PlaylistCollectionPlaylistSetAsDeleted
  .field /*0400003F*/ private class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ ModeChange
  .field /*04000040*/ private class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ MediaError
  .field /*04000041*/ private class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ OpenPlaylistSwitch
  .method /*06000001*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2050
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 72   | (70)000001       */ ldstr      "6bf52a52-394a-11d3-b153-00c04f79faa6" /* 70000001 */
    IL_0006:  /* 28   | (0A)000007       */ call       instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*/::.ctor(string) /* 0A000007 */
    IL_000b:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::.ctor

  .method /*06000002*/ public hidebysig newslot specialname virtual 
          instance string  get_URL() cil managed
  // SIG: 20 00 0E
  {
    // Method begins at RVA 0x205d
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00004B       */ ldstr      "URL" /* 7000004B */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000009       */ callvirt   instance string [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_URL() /* 0A000009 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_URL

  .method /*06000003*/ public hidebysig newslot specialname virtual 
          instance void  set_URL(string 'value') cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x207e
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00004B       */ ldstr      "URL" /* 7000004B */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)00000A       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_URL(string) /* 0A00000A */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_URL

  .method /*06000004*/ public hidebysig newslot specialname virtual 
          instance valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPOpenState/*01000007*/ 
          get_openState() cil managed
  // SIG: 20 00 11 1D
  {
    // Method begins at RVA 0x20a0
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000053       */ ldstr      "openState" /* 70000053 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00000B       */ callvirt   instance valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPOpenState/*01000007*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_openState() /* 0A00000B */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_openState

  .method /*06000005*/ public hidebysig newslot specialname virtual 
          instance valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlayState/*01000008*/ 
          get_playState() cil managed
  // SIG: 20 00 11 21
  {
    // Method begins at RVA 0x20c1
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000067       */ ldstr      "playState" /* 70000067 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00000C       */ callvirt   instance valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlayState/*01000008*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_playState() /* 0A00000C */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_playState

  .method /*06000006*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPControls/*01000009*/ 
          get_Ctlcontrols() cil managed
  // SIG: 20 00 12 25
  {
    // Method begins at RVA 0x20e2
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00007B       */ ldstr      "Ctlcontrols" /* 7000007B */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00000D       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPControls/*01000009*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_controls() /* 0A00000D */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_Ctlcontrols

  .method /*06000007*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSettings/*0100000A*/ 
          get_settings() cil managed
  // SIG: 20 00 12 29
  {
    // Method begins at RVA 0x2103
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000093       */ ldstr      "settings" /* 70000093 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00000E       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSettings/*0100000A*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_settings() /* 0A00000E */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_settings

  .method /*06000008*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/ 
          get_currentMedia() cil managed
  // SIG: 20 00 12 2D
  {
    // Method begins at RVA 0x2124
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0000A5       */ ldstr      "currentMedia" /* 700000A5 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00000F       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_currentMedia() /* 0A00000F */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_currentMedia

  .method /*06000009*/ public hidebysig newslot specialname virtual 
          instance void  set_currentMedia(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/ 'value') cil managed
  // SIG: 20 01 01 12 2D
  {
    // Method begins at RVA 0x2145
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0000A5       */ ldstr      "currentMedia" /* 700000A5 */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)000010       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_currentMedia(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/) /* 0A000010 */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_currentMedia

  .method /*0600000A*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMediaCollection/*0100000C*/ 
          get_mediaCollection() cil managed
  // SIG: 20 00 12 31
  {
    // Method begins at RVA 0x2167
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0000BF       */ ldstr      "mediaCollection" /* 700000BF */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000011       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMediaCollection/*0100000C*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_mediaCollection() /* 0A000011 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_mediaCollection

  .method /*0600000B*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylistCollection/*0100000D*/ 
          get_playlistCollection() cil managed
  // SIG: 20 00 12 35
  {
    // Method begins at RVA 0x2188
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0000DF       */ ldstr      "playlistCollection" /* 700000DF */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000012       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylistCollection/*0100000D*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_playlistCollection() /* 0A000012 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_playlistCollection

  .method /*0600000C*/ public hidebysig newslot specialname virtual 
          instance string  get_versionInfo() cil managed
  // SIG: 20 00 0E
  {
    // Method begins at RVA 0x21a9
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000105       */ ldstr      "versionInfo" /* 70000105 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000013       */ callvirt   instance string [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_versionInfo() /* 0A000013 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_versionInfo

  .method /*0600000D*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPNetwork/*0100000E*/ 
          get_network() cil managed
  // SIG: 20 00 12 39
  {
    // Method begins at RVA 0x21ca
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00011D       */ ldstr      "network" /* 7000011D */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000014       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPNetwork/*0100000E*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_network() /* 0A000014 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_network

  .method /*0600000E*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/ 
          get_currentPlaylist() cil managed
  // SIG: 20 00 12 3D
  {
    // Method begins at RVA 0x21eb
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00012D       */ ldstr      "currentPlaylist" /* 7000012D */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000015       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_currentPlaylist() /* 0A000015 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_currentPlaylist

  .method /*0600000F*/ public hidebysig newslot specialname virtual 
          instance void  set_currentPlaylist(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/ 'value') cil managed
  // SIG: 20 01 01 12 3D
  {
    // Method begins at RVA 0x220c
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00012D       */ ldstr      "currentPlaylist" /* 7000012D */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)000016       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_currentPlaylist(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/) /* 0A000016 */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_currentPlaylist

  .method /*06000010*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromCollection/*01000010*/ 
          get_cdromCollection() cil managed
  // SIG: 20 00 12 41
  {
    // Method begins at RVA 0x222e
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00014D       */ ldstr      "cdromCollection" /* 7000014D */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000017       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromCollection/*01000010*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_cdromCollection() /* 0A000017 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_cdromCollection

  .method /*06000011*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPClosedCaption/*01000011*/ 
          get_closedCaption() cil managed
  // SIG: 20 00 12 45
  {
    // Method begins at RVA 0x224f
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00016D       */ ldstr      "closedCaption" /* 7000016D */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000018       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPClosedCaption/*01000011*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_closedCaption() /* 0A000018 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_closedCaption

  .method /*06000012*/ public hidebysig newslot specialname virtual 
          instance bool  get_isOnline() cil managed
  // SIG: 20 00 02
  {
    // Method begins at RVA 0x2270
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000189       */ ldstr      "isOnline" /* 70000189 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000019       */ callvirt   instance bool [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_isOnline() /* 0A000019 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_isOnline

  .method /*06000013*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPError/*01000012*/ 
          get_Error() cil managed
  // SIG: 20 00 12 49
  {
    // Method begins at RVA 0x2291
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00019B       */ ldstr      "Error" /* 7000019B */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00001A       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPError/*01000012*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_Error() /* 0A00001A */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_Error

  .method /*06000014*/ public hidebysig newslot specialname virtual 
          instance string  get_status() cil managed
  // SIG: 20 00 0E
  {
    // Method begins at RVA 0x22b2
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0001A7       */ ldstr      "status" /* 700001A7 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00001B       */ callvirt   instance string [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_status() /* 0A00001B */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_status

  .method /*06000015*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPDVD/*01000013*/ 
          get_dvd() cil managed
  // SIG: 20 00 12 4D
  {
    // Method begins at RVA 0x22d3
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0001B5       */ ldstr      "dvd" /* 700001B5 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00001C       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPDVD/*01000013*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_dvd() /* 0A00001C */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_dvd

  .method /*06000016*/ public hidebysig newslot specialname virtual 
          instance bool  get_Ctlenabled() cil managed
  // SIG: 20 00 02
  {
    // Method begins at RVA 0x22f4
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0001BD       */ ldstr      "Ctlenabled" /* 700001BD */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00001D       */ callvirt   instance bool [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_enabled() /* 0A00001D */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_Ctlenabled

  .method /*06000017*/ public hidebysig newslot specialname virtual 
          instance void  set_Ctlenabled(bool 'value') cil managed
  // SIG: 20 01 01 02
  {
    // Method begins at RVA 0x2315
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0001BD       */ ldstr      "Ctlenabled" /* 700001BD */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)00001E       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_enabled(bool) /* 0A00001E */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_Ctlenabled

  .method /*06000018*/ public hidebysig newslot specialname virtual 
          instance bool  get_fullScreen() cil managed
  // SIG: 20 00 02
  {
    // Method begins at RVA 0x2337
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0001D3       */ ldstr      "fullScreen" /* 700001D3 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00001F       */ callvirt   instance bool [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_fullScreen() /* 0A00001F */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_fullScreen

  .method /*06000019*/ public hidebysig newslot specialname virtual 
          instance void  set_fullScreen(bool 'value') cil managed
  // SIG: 20 01 01 02
  {
    // Method begins at RVA 0x2358
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0001D3       */ ldstr      "fullScreen" /* 700001D3 */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)000020       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_fullScreen(bool) /* 0A000020 */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_fullScreen

  .method /*0600001A*/ public hidebysig newslot specialname virtual 
          instance bool  get_enableContextMenu() cil managed
  // SIG: 20 00 02
  {
    // Method begins at RVA 0x237a
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0001E9       */ ldstr      "enableContextMenu" /* 700001E9 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000021       */ callvirt   instance bool [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_enableContextMenu() /* 0A000021 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_enableContextMenu

  .method /*0600001B*/ public hidebysig newslot specialname virtual 
          instance void  set_enableContextMenu(bool 'value') cil managed
  // SIG: 20 01 01 02
  {
    // Method begins at RVA 0x239b
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0001E9       */ ldstr      "enableContextMenu" /* 700001E9 */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)000022       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_enableContextMenu(bool) /* 0A000022 */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_enableContextMenu

  .method /*0600001C*/ public hidebysig newslot specialname virtual 
          instance string  get_uiMode() cil managed
  // SIG: 20 00 0E
  {
    // Method begins at RVA 0x23bd
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00020D       */ ldstr      "uiMode" /* 7000020D */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000023       */ callvirt   instance string [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_uiMode() /* 0A000023 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_uiMode

  .method /*0600001D*/ public hidebysig newslot specialname virtual 
          instance void  set_uiMode(string 'value') cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x23de
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00020D       */ ldstr      "uiMode" /* 7000020D */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)000024       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_uiMode(string) /* 0A000024 */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_uiMode

  .method /*0600001E*/ public hidebysig newslot specialname virtual 
          instance bool  get_stretchToFit() cil managed
  // SIG: 20 00 02
  {
    // Method begins at RVA 0x2400
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00021B       */ ldstr      "stretchToFit" /* 7000021B */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000025       */ callvirt   instance bool [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_stretchToFit() /* 0A000025 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_stretchToFit

  .method /*0600001F*/ public hidebysig newslot specialname virtual 
          instance void  set_stretchToFit(bool 'value') cil managed
  // SIG: 20 01 01 02
  {
    // Method begins at RVA 0x2421
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00021B       */ ldstr      "stretchToFit" /* 7000021B */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)000026       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_stretchToFit(bool) /* 0A000026 */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_stretchToFit

  .method /*06000020*/ public hidebysig newslot specialname virtual 
          instance bool  get_windowlessVideo() cil managed
  // SIG: 20 00 02
  {
    // Method begins at RVA 0x2443
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000235       */ ldstr      "windowlessVideo" /* 70000235 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000027       */ callvirt   instance bool [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_windowlessVideo() /* 0A000027 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_windowlessVideo

  .method /*06000021*/ public hidebysig newslot specialname virtual 
          instance void  set_windowlessVideo(bool 'value') cil managed
  // SIG: 20 01 01 02
  {
    // Method begins at RVA 0x2464
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000235       */ ldstr      "windowlessVideo" /* 70000235 */
    IL_000d:  /* 18   |                  */ ldc.i4.2
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)000028       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::set_windowlessVideo(bool) /* 0A000028 */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::set_windowlessVideo

  .method /*06000022*/ public hidebysig newslot specialname virtual 
          instance bool  get_isRemote() cil managed
  // SIG: 20 00 02
  {
    // Method begins at RVA 0x2486
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000255       */ ldstr      "isRemote" /* 70000255 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)000029       */ callvirt   instance bool [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_isRemote() /* 0A000029 */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_isRemote

  .method /*06000023*/ public hidebysig newslot specialname virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayerApplication/*01000014*/ 
          get_playerApplication() cil managed
  // SIG: 20 00 12 51
  {
    // Method begins at RVA 0x24a7
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)000267       */ ldstr      "playerApplication" /* 70000267 */
    IL_000d:  /* 17   |                  */ ldc.i4.1
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00002A       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayerApplication/*01000014*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::get_playerApplication() /* 0A00002A */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::get_playerApplication

  .method /*06000024*/ public hidebysig specialname 
          instance void  add_DomainChange(class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 0C
  {
    // Method begins at RVA 0x24c8
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000004       */ ldfld      class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DomainChange /* 04000004 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000003       */ castclass  AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/
    IL_0012:  /* 7D   | (04)000004       */ stfld      class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DomainChange /* 04000004 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_DomainChange

  .method /*06000025*/ public hidebysig specialname 
          instance void  remove_DomainChange(class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 0C
  {
    // Method begins at RVA 0x24e1
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000004       */ ldfld      class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DomainChange /* 04000004 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000003       */ castclass  AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/
    IL_0012:  /* 7D   | (04)000004       */ stfld      class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DomainChange /* 04000004 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_DomainChange

  .method /*06000026*/ public hidebysig specialname 
          instance void  add_SwitchedToPlayerApplication(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x24fa
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000005       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToPlayerApplication /* 04000005 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000005       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToPlayerApplication /* 04000005 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_SwitchedToPlayerApplication

  .method /*06000027*/ public hidebysig specialname 
          instance void  remove_SwitchedToPlayerApplication(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2513
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000005       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToPlayerApplication /* 04000005 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000005       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToPlayerApplication /* 04000005 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_SwitchedToPlayerApplication

  .method /*06000028*/ public hidebysig specialname 
          instance void  add_SwitchedToControl(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x252c
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000006       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToControl /* 04000006 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000006       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToControl /* 04000006 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_SwitchedToControl

  .method /*06000029*/ public hidebysig specialname 
          instance void  remove_SwitchedToControl(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2545
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000006       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToControl /* 04000006 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000006       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToControl /* 04000006 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_SwitchedToControl

  .method /*0600002A*/ public hidebysig specialname 
          instance void  add_PlayerDockedStateChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x255e
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000007       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerDockedStateChange /* 04000007 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000007       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerDockedStateChange /* 04000007 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PlayerDockedStateChange

  .method /*0600002B*/ public hidebysig specialname 
          instance void  remove_PlayerDockedStateChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2577
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000007       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerDockedStateChange /* 04000007 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000007       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerDockedStateChange /* 04000007 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PlayerDockedStateChange

  .method /*0600002C*/ public hidebysig specialname 
          instance void  add_PlayerReconnect(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2590
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000008       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerReconnect /* 04000008 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000008       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerReconnect /* 04000008 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PlayerReconnect

  .method /*0600002D*/ public hidebysig specialname 
          instance void  remove_PlayerReconnect(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x25a9
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000008       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerReconnect /* 04000008 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000008       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerReconnect /* 04000008 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PlayerReconnect

  .method /*0600002E*/ public hidebysig specialname 
          instance void  add_ClickEvent(class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 14
  {
    // Method begins at RVA 0x25c2
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000009       */ ldfld      class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ClickEvent /* 04000009 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000005       */ castclass  AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/
    IL_0012:  /* 7D   | (04)000009       */ stfld      class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ClickEvent /* 04000009 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_ClickEvent

  .method /*0600002F*/ public hidebysig specialname 
          instance void  remove_ClickEvent(class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 14
  {
    // Method begins at RVA 0x25db
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000009       */ ldfld      class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ClickEvent /* 04000009 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000005       */ castclass  AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/
    IL_0012:  /* 7D   | (04)000009       */ stfld      class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ClickEvent /* 04000009 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_ClickEvent

  .method /*06000030*/ public hidebysig specialname 
          instance void  add_DoubleClickEvent(class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 1C
  {
    // Method begins at RVA 0x25f4
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000A       */ ldfld      class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DoubleClickEvent /* 0400000A */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000007       */ castclass  AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/
    IL_0012:  /* 7D   | (04)00000A       */ stfld      class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DoubleClickEvent /* 0400000A */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_DoubleClickEvent

  .method /*06000031*/ public hidebysig specialname 
          instance void  remove_DoubleClickEvent(class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 1C
  {
    // Method begins at RVA 0x260d
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000A       */ ldfld      class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DoubleClickEvent /* 0400000A */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000007       */ castclass  AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/
    IL_0012:  /* 7D   | (04)00000A       */ stfld      class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DoubleClickEvent /* 0400000A */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_DoubleClickEvent

  .method /*06000032*/ public hidebysig specialname 
          instance void  add_KeyDownEvent(class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 24
  {
    // Method begins at RVA 0x2626
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000B       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyDownEvent /* 0400000B */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000009       */ castclass  AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/
    IL_0012:  /* 7D   | (04)00000B       */ stfld      class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyDownEvent /* 0400000B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_KeyDownEvent

  .method /*06000033*/ public hidebysig specialname 
          instance void  remove_KeyDownEvent(class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 24
  {
    // Method begins at RVA 0x263f
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000B       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyDownEvent /* 0400000B */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000009       */ castclass  AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/
    IL_0012:  /* 7D   | (04)00000B       */ stfld      class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyDownEvent /* 0400000B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_KeyDownEvent

  .method /*06000034*/ public hidebysig specialname 
          instance void  add_KeyPressEvent(class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 2C
  {
    // Method begins at RVA 0x2658
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000C       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyPressEvent /* 0400000C */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00000B       */ castclass  AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/
    IL_0012:  /* 7D   | (04)00000C       */ stfld      class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyPressEvent /* 0400000C */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_KeyPressEvent

  .method /*06000035*/ public hidebysig specialname 
          instance void  remove_KeyPressEvent(class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 2C
  {
    // Method begins at RVA 0x2671
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000C       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyPressEvent /* 0400000C */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00000B       */ castclass  AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/
    IL_0012:  /* 7D   | (04)00000C       */ stfld      class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyPressEvent /* 0400000C */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_KeyPressEvent

  .method /*06000036*/ public hidebysig specialname 
          instance void  add_KeyUpEvent(class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 34
  {
    // Method begins at RVA 0x268a
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000D       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyUpEvent /* 0400000D */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00000D       */ castclass  AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/
    IL_0012:  /* 7D   | (04)00000D       */ stfld      class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyUpEvent /* 0400000D */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_KeyUpEvent

  .method /*06000037*/ public hidebysig specialname 
          instance void  remove_KeyUpEvent(class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 34
  {
    // Method begins at RVA 0x26a3
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000D       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyUpEvent /* 0400000D */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00000D       */ castclass  AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/
    IL_0012:  /* 7D   | (04)00000D       */ stfld      class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyUpEvent /* 0400000D */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_KeyUpEvent

  .method /*06000038*/ public hidebysig specialname 
          instance void  add_MouseDownEvent(class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 3C
  {
    // Method begins at RVA 0x26bc
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000E       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseDownEvent /* 0400000E */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00000F       */ castclass  AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/
    IL_0012:  /* 7D   | (04)00000E       */ stfld      class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseDownEvent /* 0400000E */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MouseDownEvent

  .method /*06000039*/ public hidebysig specialname 
          instance void  remove_MouseDownEvent(class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 3C
  {
    // Method begins at RVA 0x26d5
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000E       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseDownEvent /* 0400000E */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00000F       */ castclass  AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/
    IL_0012:  /* 7D   | (04)00000E       */ stfld      class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseDownEvent /* 0400000E */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MouseDownEvent

  .method /*0600003A*/ public hidebysig specialname 
          instance void  add_MouseMoveEvent(class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 44
  {
    // Method begins at RVA 0x26ee
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000F       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseMoveEvent /* 0400000F */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000011       */ castclass  AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/
    IL_0012:  /* 7D   | (04)00000F       */ stfld      class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseMoveEvent /* 0400000F */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MouseMoveEvent

  .method /*0600003B*/ public hidebysig specialname 
          instance void  remove_MouseMoveEvent(class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 44
  {
    // Method begins at RVA 0x2707
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00000F       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseMoveEvent /* 0400000F */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000011       */ castclass  AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/
    IL_0012:  /* 7D   | (04)00000F       */ stfld      class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseMoveEvent /* 0400000F */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MouseMoveEvent

  .method /*0600003C*/ public hidebysig specialname 
          instance void  add_MouseUpEvent(class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 4C
  {
    // Method begins at RVA 0x2720
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000010       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseUpEvent /* 04000010 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000013       */ castclass  AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/
    IL_0012:  /* 7D   | (04)000010       */ stfld      class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseUpEvent /* 04000010 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MouseUpEvent

  .method /*0600003D*/ public hidebysig specialname 
          instance void  remove_MouseUpEvent(class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 4C
  {
    // Method begins at RVA 0x2739
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000010       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseUpEvent /* 04000010 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000013       */ castclass  AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/
    IL_0012:  /* 7D   | (04)000010       */ stfld      class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseUpEvent /* 04000010 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MouseUpEvent

  .method /*0600003E*/ public hidebysig specialname 
          instance void  add_DeviceConnect(class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 54
  {
    // Method begins at RVA 0x2752
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000011       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceConnect /* 04000011 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000015       */ castclass  AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/
    IL_0012:  /* 7D   | (04)000011       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceConnect /* 04000011 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_DeviceConnect

  .method /*0600003F*/ public hidebysig specialname 
          instance void  remove_DeviceConnect(class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 54
  {
    // Method begins at RVA 0x276b
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000011       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceConnect /* 04000011 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000015       */ castclass  AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/
    IL_0012:  /* 7D   | (04)000011       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceConnect /* 04000011 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_DeviceConnect

  .method /*06000040*/ public hidebysig specialname 
          instance void  add_DeviceDisconnect(class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 5C
  {
    // Method begins at RVA 0x2784
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000012       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceDisconnect /* 04000012 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000017       */ castclass  AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/
    IL_0012:  /* 7D   | (04)000012       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceDisconnect /* 04000012 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_DeviceDisconnect

  .method /*06000041*/ public hidebysig specialname 
          instance void  remove_DeviceDisconnect(class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 5C
  {
    // Method begins at RVA 0x279d
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000012       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceDisconnect /* 04000012 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000017       */ castclass  AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/
    IL_0012:  /* 7D   | (04)000012       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceDisconnect /* 04000012 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_DeviceDisconnect

  .method /*06000042*/ public hidebysig specialname 
          instance void  add_DeviceStatusChange(class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 64
  {
    // Method begins at RVA 0x27b6
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000013       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceStatusChange /* 04000013 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000019       */ castclass  AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/
    IL_0012:  /* 7D   | (04)000013       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceStatusChange /* 04000013 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_DeviceStatusChange

  .method /*06000043*/ public hidebysig specialname 
          instance void  remove_DeviceStatusChange(class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 64
  {
    // Method begins at RVA 0x27cf
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000013       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceStatusChange /* 04000013 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000019       */ castclass  AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/
    IL_0012:  /* 7D   | (04)000013       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceStatusChange /* 04000013 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_DeviceStatusChange

  .method /*06000044*/ public hidebysig specialname 
          instance void  add_DeviceSyncStateChange(class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 6C
  {
    // Method begins at RVA 0x27e8
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000014       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncStateChange /* 04000014 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00001B       */ castclass  AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/
    IL_0012:  /* 7D   | (04)000014       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncStateChange /* 04000014 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_DeviceSyncStateChange

  .method /*06000045*/ public hidebysig specialname 
          instance void  remove_DeviceSyncStateChange(class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 6C
  {
    // Method begins at RVA 0x2801
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000014       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncStateChange /* 04000014 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00001B       */ castclass  AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/
    IL_0012:  /* 7D   | (04)000014       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncStateChange /* 04000014 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_DeviceSyncStateChange

  .method /*06000046*/ public hidebysig specialname 
          instance void  add_DeviceSyncError(class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 74
  {
    // Method begins at RVA 0x281a
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000015       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncError /* 04000015 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00001D       */ castclass  AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/
    IL_0012:  /* 7D   | (04)000015       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncError /* 04000015 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_DeviceSyncError

  .method /*06000047*/ public hidebysig specialname 
          instance void  remove_DeviceSyncError(class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 74
  {
    // Method begins at RVA 0x2833
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000015       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncError /* 04000015 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00001D       */ castclass  AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/
    IL_0012:  /* 7D   | (04)000015       */ stfld      class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncError /* 04000015 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_DeviceSyncError

  .method /*06000048*/ public hidebysig specialname 
          instance void  add_CreatePartnershipComplete(class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 7C
  {
    // Method begins at RVA 0x284c
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000016       */ ldfld      class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CreatePartnershipComplete /* 04000016 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00001F       */ castclass  AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/
    IL_0012:  /* 7D   | (04)000016       */ stfld      class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CreatePartnershipComplete /* 04000016 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CreatePartnershipComplete

  .method /*06000049*/ public hidebysig specialname 
          instance void  remove_CreatePartnershipComplete(class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 7C
  {
    // Method begins at RVA 0x2865
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000016       */ ldfld      class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CreatePartnershipComplete /* 04000016 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00001F       */ castclass  AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/
    IL_0012:  /* 7D   | (04)000016       */ stfld      class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CreatePartnershipComplete /* 04000016 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CreatePartnershipComplete

  .method /*0600004A*/ public hidebysig specialname 
          instance void  add_CdromRipStateChange(class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 84
  {
    // Method begins at RVA 0x287e
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000017       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipStateChange /* 04000017 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000021       */ castclass  AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/
    IL_0012:  /* 7D   | (04)000017       */ stfld      class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipStateChange /* 04000017 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CdromRipStateChange

  .method /*0600004B*/ public hidebysig specialname 
          instance void  remove_CdromRipStateChange(class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 84
  {
    // Method begins at RVA 0x2897
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000017       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipStateChange /* 04000017 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000021       */ castclass  AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/
    IL_0012:  /* 7D   | (04)000017       */ stfld      class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipStateChange /* 04000017 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CdromRipStateChange

  .method /*0600004C*/ public hidebysig specialname 
          instance void  add_CdromRipMediaError(class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 8C
  {
    // Method begins at RVA 0x28b0
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000018       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipMediaError /* 04000018 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000023       */ castclass  AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/
    IL_0012:  /* 7D   | (04)000018       */ stfld      class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipMediaError /* 04000018 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CdromRipMediaError

  .method /*0600004D*/ public hidebysig specialname 
          instance void  remove_CdromRipMediaError(class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 8C
  {
    // Method begins at RVA 0x28c9
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000018       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipMediaError /* 04000018 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000023       */ castclass  AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/
    IL_0012:  /* 7D   | (04)000018       */ stfld      class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipMediaError /* 04000018 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CdromRipMediaError

  .method /*0600004E*/ public hidebysig specialname 
          instance void  add_CdromBurnStateChange(class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 94
  {
    // Method begins at RVA 0x28e2
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000019       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnStateChange /* 04000019 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000025       */ castclass  AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/
    IL_0012:  /* 7D   | (04)000019       */ stfld      class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnStateChange /* 04000019 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CdromBurnStateChange

  .method /*0600004F*/ public hidebysig specialname 
          instance void  remove_CdromBurnStateChange(class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 94
  {
    // Method begins at RVA 0x28fb
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000019       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnStateChange /* 04000019 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000025       */ castclass  AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/
    IL_0012:  /* 7D   | (04)000019       */ stfld      class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnStateChange /* 04000019 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CdromBurnStateChange

  .method /*06000050*/ public hidebysig specialname 
          instance void  add_CdromBurnMediaError(class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 9C
  {
    // Method begins at RVA 0x2914
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001A       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnMediaError /* 0400001A */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000027       */ castclass  AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/
    IL_0012:  /* 7D   | (04)00001A       */ stfld      class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnMediaError /* 0400001A */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CdromBurnMediaError

  .method /*06000051*/ public hidebysig specialname 
          instance void  remove_CdromBurnMediaError(class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 9C
  {
    // Method begins at RVA 0x292d
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001A       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnMediaError /* 0400001A */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000027       */ castclass  AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/
    IL_0012:  /* 7D   | (04)00001A       */ stfld      class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnMediaError /* 0400001A */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CdromBurnMediaError

  .method /*06000052*/ public hidebysig specialname 
          instance void  add_CdromBurnError(class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 A4
  {
    // Method begins at RVA 0x2946
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001B       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnError /* 0400001B */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000029       */ castclass  AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/
    IL_0012:  /* 7D   | (04)00001B       */ stfld      class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnError /* 0400001B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CdromBurnError

  .method /*06000053*/ public hidebysig specialname 
          instance void  remove_CdromBurnError(class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 A4
  {
    // Method begins at RVA 0x295f
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001B       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnError /* 0400001B */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000029       */ castclass  AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/
    IL_0012:  /* 7D   | (04)00001B       */ stfld      class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnError /* 0400001B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CdromBurnError

  .method /*06000054*/ public hidebysig specialname 
          instance void  add_LibraryConnect(class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 AC
  {
    // Method begins at RVA 0x2978
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001C       */ ldfld      class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryConnect /* 0400001C */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00002B       */ castclass  AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/
    IL_0012:  /* 7D   | (04)00001C       */ stfld      class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryConnect /* 0400001C */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_LibraryConnect

  .method /*06000055*/ public hidebysig specialname 
          instance void  remove_LibraryConnect(class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 AC
  {
    // Method begins at RVA 0x2991
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001C       */ ldfld      class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryConnect /* 0400001C */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00002B       */ castclass  AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/
    IL_0012:  /* 7D   | (04)00001C       */ stfld      class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryConnect /* 0400001C */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_LibraryConnect

  .method /*06000056*/ public hidebysig specialname 
          instance void  add_LibraryDisconnect(class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 B4
  {
    // Method begins at RVA 0x29aa
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001D       */ ldfld      class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryDisconnect /* 0400001D */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00002D       */ castclass  AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/
    IL_0012:  /* 7D   | (04)00001D       */ stfld      class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryDisconnect /* 0400001D */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_LibraryDisconnect

  .method /*06000057*/ public hidebysig specialname 
          instance void  remove_LibraryDisconnect(class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 B4
  {
    // Method begins at RVA 0x29c3
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001D       */ ldfld      class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryDisconnect /* 0400001D */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00002D       */ castclass  AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/
    IL_0012:  /* 7D   | (04)00001D       */ stfld      class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryDisconnect /* 0400001D */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_LibraryDisconnect

  .method /*06000058*/ public hidebysig specialname 
          instance void  add_FolderScanStateChange(class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 BC
  {
    // Method begins at RVA 0x29dc
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001E       */ ldfld      class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::FolderScanStateChange /* 0400001E */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00002F       */ castclass  AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/
    IL_0012:  /* 7D   | (04)00001E       */ stfld      class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::FolderScanStateChange /* 0400001E */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_FolderScanStateChange

  .method /*06000059*/ public hidebysig specialname 
          instance void  remove_FolderScanStateChange(class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 BC
  {
    // Method begins at RVA 0x29f5
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001E       */ ldfld      class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::FolderScanStateChange /* 0400001E */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00002F       */ castclass  AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/
    IL_0012:  /* 7D   | (04)00001E       */ stfld      class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::FolderScanStateChange /* 0400001E */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_FolderScanStateChange

  .method /*0600005A*/ public hidebysig specialname 
          instance void  add_StringCollectionChange(class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 C4
  {
    // Method begins at RVA 0x2a0e
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001F       */ ldfld      class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StringCollectionChange /* 0400001F */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000031       */ castclass  AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/
    IL_0012:  /* 7D   | (04)00001F       */ stfld      class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StringCollectionChange /* 0400001F */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_StringCollectionChange

  .method /*0600005B*/ public hidebysig specialname 
          instance void  remove_StringCollectionChange(class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 C4
  {
    // Method begins at RVA 0x2a27
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00001F       */ ldfld      class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StringCollectionChange /* 0400001F */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000031       */ castclass  AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/
    IL_0012:  /* 7D   | (04)00001F       */ stfld      class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StringCollectionChange /* 0400001F */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_StringCollectionChange

  .method /*0600005C*/ public hidebysig specialname 
          instance void  add_MediaCollectionMediaAdded(class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 CC
  {
    // Method begins at RVA 0x2a40
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000020       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaAdded /* 04000020 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000033       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/
    IL_0012:  /* 7D   | (04)000020       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaAdded /* 04000020 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MediaCollectionMediaAdded

  .method /*0600005D*/ public hidebysig specialname 
          instance void  remove_MediaCollectionMediaAdded(class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 CC
  {
    // Method begins at RVA 0x2a59
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000020       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaAdded /* 04000020 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000033       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/
    IL_0012:  /* 7D   | (04)000020       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaAdded /* 04000020 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MediaCollectionMediaAdded

  .method /*0600005E*/ public hidebysig specialname 
          instance void  add_MediaCollectionMediaRemoved(class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 D4
  {
    // Method begins at RVA 0x2a72
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000021       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaRemoved /* 04000021 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000035       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/
    IL_0012:  /* 7D   | (04)000021       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaRemoved /* 04000021 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MediaCollectionMediaRemoved

  .method /*0600005F*/ public hidebysig specialname 
          instance void  remove_MediaCollectionMediaRemoved(class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 D4
  {
    // Method begins at RVA 0x2a8b
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000021       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaRemoved /* 04000021 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000035       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/
    IL_0012:  /* 7D   | (04)000021       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaRemoved /* 04000021 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MediaCollectionMediaRemoved

  .method /*06000060*/ public hidebysig specialname 
          instance void  add_OpenStateChange(class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 DC
  {
    // Method begins at RVA 0x2aa4
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000022       */ ldfld      class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenStateChange /* 04000022 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000037       */ castclass  AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/
    IL_0012:  /* 7D   | (04)000022       */ stfld      class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenStateChange /* 04000022 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_OpenStateChange

  .method /*06000061*/ public hidebysig specialname 
          instance void  remove_OpenStateChange(class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 DC
  {
    // Method begins at RVA 0x2abd
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000022       */ ldfld      class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenStateChange /* 04000022 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000037       */ castclass  AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/
    IL_0012:  /* 7D   | (04)000022       */ stfld      class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenStateChange /* 04000022 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_OpenStateChange

  .method /*06000062*/ public hidebysig specialname 
          instance void  add_PlayStateChange(class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 E4
  {
    // Method begins at RVA 0x2ad6
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000023       */ ldfld      class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayStateChange /* 04000023 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000039       */ castclass  AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/
    IL_0012:  /* 7D   | (04)000023       */ stfld      class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayStateChange /* 04000023 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PlayStateChange

  .method /*06000063*/ public hidebysig specialname 
          instance void  remove_PlayStateChange(class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 E4
  {
    // Method begins at RVA 0x2aef
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000023       */ ldfld      class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayStateChange /* 04000023 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000039       */ castclass  AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/
    IL_0012:  /* 7D   | (04)000023       */ stfld      class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayStateChange /* 04000023 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PlayStateChange

  .method /*06000064*/ public hidebysig specialname 
          instance void  add_AudioLanguageChange(class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 EC
  {
    // Method begins at RVA 0x2b08
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000024       */ ldfld      class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::AudioLanguageChange /* 04000024 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00003B       */ castclass  AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/
    IL_0012:  /* 7D   | (04)000024       */ stfld      class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::AudioLanguageChange /* 04000024 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_AudioLanguageChange

  .method /*06000065*/ public hidebysig specialname 
          instance void  remove_AudioLanguageChange(class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 EC
  {
    // Method begins at RVA 0x2b21
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000024       */ ldfld      class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::AudioLanguageChange /* 04000024 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00003B       */ castclass  AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/
    IL_0012:  /* 7D   | (04)000024       */ stfld      class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::AudioLanguageChange /* 04000024 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_AudioLanguageChange

  .method /*06000066*/ public hidebysig specialname 
          instance void  add_StatusChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2b3a
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000025       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StatusChange /* 04000025 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000025       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StatusChange /* 04000025 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_StatusChange

  .method /*06000067*/ public hidebysig specialname 
          instance void  remove_StatusChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2b53
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000025       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StatusChange /* 04000025 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000025       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StatusChange /* 04000025 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_StatusChange

  .method /*06000068*/ public hidebysig specialname 
          instance void  add_ScriptCommand(class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 F4
  {
    // Method begins at RVA 0x2b6c
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000026       */ ldfld      class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ScriptCommand /* 04000026 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00003D       */ castclass  AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/
    IL_0012:  /* 7D   | (04)000026       */ stfld      class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ScriptCommand /* 04000026 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_ScriptCommand

  .method /*06000069*/ public hidebysig specialname 
          instance void  remove_ScriptCommand(class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 F4
  {
    // Method begins at RVA 0x2b85
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000026       */ ldfld      class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ScriptCommand /* 04000026 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00003D       */ castclass  AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/
    IL_0012:  /* 7D   | (04)000026       */ stfld      class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ScriptCommand /* 04000026 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_ScriptCommand

  .method /*0600006A*/ public hidebysig specialname 
          instance void  add_NewStream(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2b9e
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000027       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::NewStream /* 04000027 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000027       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::NewStream /* 04000027 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_NewStream

  .method /*0600006B*/ public hidebysig specialname 
          instance void  remove_NewStream(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2bb7
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000027       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::NewStream /* 04000027 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000027       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::NewStream /* 04000027 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_NewStream

  .method /*0600006C*/ public hidebysig specialname 
          instance void  add_Disconnect(class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 FC
  {
    // Method begins at RVA 0x2bd0
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000028       */ ldfld      class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Disconnect /* 04000028 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00003F       */ castclass  AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/
    IL_0012:  /* 7D   | (04)000028       */ stfld      class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Disconnect /* 04000028 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_Disconnect

  .method /*0600006D*/ public hidebysig specialname 
          instance void  remove_Disconnect(class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 80 FC
  {
    // Method begins at RVA 0x2be9
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000028       */ ldfld      class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Disconnect /* 04000028 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00003F       */ castclass  AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/
    IL_0012:  /* 7D   | (04)000028       */ stfld      class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Disconnect /* 04000028 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_Disconnect

  .method /*0600006E*/ public hidebysig specialname 
          instance void  add_Buffering(class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 04
  {
    // Method begins at RVA 0x2c02
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000029       */ ldfld      class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Buffering /* 04000029 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000041       */ castclass  AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/
    IL_0012:  /* 7D   | (04)000029       */ stfld      class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Buffering /* 04000029 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_Buffering

  .method /*0600006F*/ public hidebysig specialname 
          instance void  remove_Buffering(class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 04
  {
    // Method begins at RVA 0x2c1b
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000029       */ ldfld      class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Buffering /* 04000029 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000041       */ castclass  AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/
    IL_0012:  /* 7D   | (04)000029       */ stfld      class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Buffering /* 04000029 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_Buffering

  .method /*06000070*/ public hidebysig specialname 
          instance void  add_ErrorEvent(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2c34
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002A       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ErrorEvent /* 0400002A */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)00002A       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ErrorEvent /* 0400002A */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_ErrorEvent

  .method /*06000071*/ public hidebysig specialname 
          instance void  remove_ErrorEvent(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2c4d
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002A       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ErrorEvent /* 0400002A */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)00002A       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ErrorEvent /* 0400002A */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_ErrorEvent

  .method /*06000072*/ public hidebysig specialname 
          instance void  add_Warning(class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 0C
  {
    // Method begins at RVA 0x2c66
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002B       */ ldfld      class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Warning /* 0400002B */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000043       */ castclass  AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/
    IL_0012:  /* 7D   | (04)00002B       */ stfld      class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Warning /* 0400002B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_Warning

  .method /*06000073*/ public hidebysig specialname 
          instance void  remove_Warning(class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 0C
  {
    // Method begins at RVA 0x2c7f
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002B       */ ldfld      class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Warning /* 0400002B */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000043       */ castclass  AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/
    IL_0012:  /* 7D   | (04)00002B       */ stfld      class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Warning /* 0400002B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_Warning

  .method /*06000074*/ public hidebysig specialname 
          instance void  add_EndOfStream(class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 14
  {
    // Method begins at RVA 0x2c98
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002C       */ ldfld      class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::EndOfStream /* 0400002C */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000045       */ castclass  AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/
    IL_0012:  /* 7D   | (04)00002C       */ stfld      class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::EndOfStream /* 0400002C */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_EndOfStream

  .method /*06000075*/ public hidebysig specialname 
          instance void  remove_EndOfStream(class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 14
  {
    // Method begins at RVA 0x2cb1
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002C       */ ldfld      class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::EndOfStream /* 0400002C */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000045       */ castclass  AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/
    IL_0012:  /* 7D   | (04)00002C       */ stfld      class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::EndOfStream /* 0400002C */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_EndOfStream

  .method /*06000076*/ public hidebysig specialname 
          instance void  add_PositionChange(class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 1C
  {
    // Method begins at RVA 0x2cca
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002D       */ ldfld      class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PositionChange /* 0400002D */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000047       */ castclass  AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/
    IL_0012:  /* 7D   | (04)00002D       */ stfld      class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PositionChange /* 0400002D */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PositionChange

  .method /*06000077*/ public hidebysig specialname 
          instance void  remove_PositionChange(class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 1C
  {
    // Method begins at RVA 0x2ce3
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002D       */ ldfld      class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PositionChange /* 0400002D */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000047       */ castclass  AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/
    IL_0012:  /* 7D   | (04)00002D       */ stfld      class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PositionChange /* 0400002D */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PositionChange

  .method /*06000078*/ public hidebysig specialname 
          instance void  add_MarkerHit(class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 24
  {
    // Method begins at RVA 0x2cfc
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002E       */ ldfld      class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MarkerHit /* 0400002E */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000049       */ castclass  AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/
    IL_0012:  /* 7D   | (04)00002E       */ stfld      class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MarkerHit /* 0400002E */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MarkerHit

  .method /*06000079*/ public hidebysig specialname 
          instance void  remove_MarkerHit(class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 24
  {
    // Method begins at RVA 0x2d15
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002E       */ ldfld      class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MarkerHit /* 0400002E */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000049       */ castclass  AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/
    IL_0012:  /* 7D   | (04)00002E       */ stfld      class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MarkerHit /* 0400002E */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MarkerHit

  .method /*0600007A*/ public hidebysig specialname 
          instance void  add_DurationUnitChange(class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 2C
  {
    // Method begins at RVA 0x2d2e
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002F       */ ldfld      class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DurationUnitChange /* 0400002F */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00004B       */ castclass  AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/
    IL_0012:  /* 7D   | (04)00002F       */ stfld      class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DurationUnitChange /* 0400002F */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_DurationUnitChange

  .method /*0600007B*/ public hidebysig specialname 
          instance void  remove_DurationUnitChange(class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 2C
  {
    // Method begins at RVA 0x2d47
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00002F       */ ldfld      class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DurationUnitChange /* 0400002F */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00004B       */ castclass  AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/
    IL_0012:  /* 7D   | (04)00002F       */ stfld      class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DurationUnitChange /* 0400002F */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_DurationUnitChange

  .method /*0600007C*/ public hidebysig specialname 
          instance void  add_CdromMediaChange(class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 34
  {
    // Method begins at RVA 0x2d60
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000030       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromMediaChange /* 04000030 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00004D       */ castclass  AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/
    IL_0012:  /* 7D   | (04)000030       */ stfld      class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromMediaChange /* 04000030 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CdromMediaChange

  .method /*0600007D*/ public hidebysig specialname 
          instance void  remove_CdromMediaChange(class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 34
  {
    // Method begins at RVA 0x2d79
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000030       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromMediaChange /* 04000030 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00004D       */ castclass  AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/
    IL_0012:  /* 7D   | (04)000030       */ stfld      class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromMediaChange /* 04000030 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CdromMediaChange

  .method /*0600007E*/ public hidebysig specialname 
          instance void  add_PlaylistChange(class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 3C
  {
    // Method begins at RVA 0x2d92
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000031       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistChange /* 04000031 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00004F       */ castclass  AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/
    IL_0012:  /* 7D   | (04)000031       */ stfld      class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistChange /* 04000031 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PlaylistChange

  .method /*0600007F*/ public hidebysig specialname 
          instance void  remove_PlaylistChange(class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 3C
  {
    // Method begins at RVA 0x2dab
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000031       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistChange /* 04000031 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00004F       */ castclass  AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/
    IL_0012:  /* 7D   | (04)000031       */ stfld      class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistChange /* 04000031 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PlaylistChange

  .method /*06000080*/ public hidebysig specialname 
          instance void  add_CurrentPlaylistChange(class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 44
  {
    // Method begins at RVA 0x2dc4
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000032       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistChange /* 04000032 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000051       */ castclass  AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/
    IL_0012:  /* 7D   | (04)000032       */ stfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistChange /* 04000032 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CurrentPlaylistChange

  .method /*06000081*/ public hidebysig specialname 
          instance void  remove_CurrentPlaylistChange(class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 44
  {
    // Method begins at RVA 0x2ddd
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000032       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistChange /* 04000032 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000051       */ castclass  AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/
    IL_0012:  /* 7D   | (04)000032       */ stfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistChange /* 04000032 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CurrentPlaylistChange

  .method /*06000082*/ public hidebysig specialname 
          instance void  add_CurrentPlaylistItemAvailable(class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 4C
  {
    // Method begins at RVA 0x2df6
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000033       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistItemAvailable /* 04000033 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000053       */ castclass  AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/
    IL_0012:  /* 7D   | (04)000033       */ stfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistItemAvailable /* 04000033 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CurrentPlaylistItemAvailable

  .method /*06000083*/ public hidebysig specialname 
          instance void  remove_CurrentPlaylistItemAvailable(class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 4C
  {
    // Method begins at RVA 0x2e0f
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000033       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistItemAvailable /* 04000033 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000053       */ castclass  AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/
    IL_0012:  /* 7D   | (04)000033       */ stfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistItemAvailable /* 04000033 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CurrentPlaylistItemAvailable

  .method /*06000084*/ public hidebysig specialname 
          instance void  add_MediaChange(class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 54
  {
    // Method begins at RVA 0x2e28
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000034       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaChange /* 04000034 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000055       */ castclass  AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/
    IL_0012:  /* 7D   | (04)000034       */ stfld      class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaChange /* 04000034 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MediaChange

  .method /*06000085*/ public hidebysig specialname 
          instance void  remove_MediaChange(class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 54
  {
    // Method begins at RVA 0x2e41
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000034       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaChange /* 04000034 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000055       */ castclass  AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/
    IL_0012:  /* 7D   | (04)000034       */ stfld      class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaChange /* 04000034 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MediaChange

  .method /*06000086*/ public hidebysig specialname 
          instance void  add_CurrentMediaItemAvailable(class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 5C
  {
    // Method begins at RVA 0x2e5a
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000035       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentMediaItemAvailable /* 04000035 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000057       */ castclass  AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/
    IL_0012:  /* 7D   | (04)000035       */ stfld      class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentMediaItemAvailable /* 04000035 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CurrentMediaItemAvailable

  .method /*06000087*/ public hidebysig specialname 
          instance void  remove_CurrentMediaItemAvailable(class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 5C
  {
    // Method begins at RVA 0x2e73
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000035       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentMediaItemAvailable /* 04000035 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000057       */ castclass  AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/
    IL_0012:  /* 7D   | (04)000035       */ stfld      class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentMediaItemAvailable /* 04000035 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CurrentMediaItemAvailable

  .method /*06000088*/ public hidebysig specialname 
          instance void  add_CurrentItemChange(class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 64
  {
    // Method begins at RVA 0x2e8c
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000036       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentItemChange /* 04000036 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000059       */ castclass  AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/
    IL_0012:  /* 7D   | (04)000036       */ stfld      class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentItemChange /* 04000036 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_CurrentItemChange

  .method /*06000089*/ public hidebysig specialname 
          instance void  remove_CurrentItemChange(class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 64
  {
    // Method begins at RVA 0x2ea5
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000036       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentItemChange /* 04000036 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000059       */ castclass  AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/
    IL_0012:  /* 7D   | (04)000036       */ stfld      class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentItemChange /* 04000036 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_CurrentItemChange

  .method /*0600008A*/ public hidebysig specialname 
          instance void  add_MediaCollectionChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2ebe
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000037       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionChange /* 04000037 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000037       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionChange /* 04000037 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MediaCollectionChange

  .method /*0600008B*/ public hidebysig specialname 
          instance void  remove_MediaCollectionChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2ed7
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000037       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionChange /* 04000037 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)000037       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionChange /* 04000037 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MediaCollectionChange

  .method /*0600008C*/ public hidebysig specialname 
          instance void  add_MediaCollectionAttributeStringAdded(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 6C
  {
    // Method begins at RVA 0x2ef0
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000038       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringAdded /* 04000038 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00005B       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/
    IL_0012:  /* 7D   | (04)000038       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringAdded /* 04000038 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MediaCollectionAttributeStringAdded

  .method /*0600008D*/ public hidebysig specialname 
          instance void  remove_MediaCollectionAttributeStringAdded(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 6C
  {
    // Method begins at RVA 0x2f09
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000038       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringAdded /* 04000038 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00005B       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/
    IL_0012:  /* 7D   | (04)000038       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringAdded /* 04000038 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MediaCollectionAttributeStringAdded

  .method /*0600008E*/ public hidebysig specialname 
          instance void  add_MediaCollectionAttributeStringRemoved(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 74
  {
    // Method begins at RVA 0x2f22
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000039       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringRemoved /* 04000039 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00005D       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/
    IL_0012:  /* 7D   | (04)000039       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringRemoved /* 04000039 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MediaCollectionAttributeStringRemoved

  .method /*0600008F*/ public hidebysig specialname 
          instance void  remove_MediaCollectionAttributeStringRemoved(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 74
  {
    // Method begins at RVA 0x2f3b
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000039       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringRemoved /* 04000039 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00005D       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/
    IL_0012:  /* 7D   | (04)000039       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringRemoved /* 04000039 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MediaCollectionAttributeStringRemoved

  .method /*06000090*/ public hidebysig specialname 
          instance void  add_MediaCollectionAttributeStringChanged(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 7C
  {
    // Method begins at RVA 0x2f54
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003A       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringChanged /* 0400003A */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00005F       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/
    IL_0012:  /* 7D   | (04)00003A       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringChanged /* 0400003A */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MediaCollectionAttributeStringChanged

  .method /*06000091*/ public hidebysig specialname 
          instance void  remove_MediaCollectionAttributeStringChanged(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 7C
  {
    // Method begins at RVA 0x2f6d
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003A       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringChanged /* 0400003A */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00005F       */ castclass  AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/
    IL_0012:  /* 7D   | (04)00003A       */ stfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringChanged /* 0400003A */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MediaCollectionAttributeStringChanged

  .method /*06000092*/ public hidebysig specialname 
          instance void  add_PlaylistCollectionChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2f86
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003B       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionChange /* 0400003B */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)00003B       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionChange /* 0400003B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PlaylistCollectionChange

  .method /*06000093*/ public hidebysig specialname 
          instance void  remove_PlaylistCollectionChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 55
  {
    // Method begins at RVA 0x2f9f
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003B       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionChange /* 0400003B */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (01)000015       */ castclass  [mscorlib/*23000002*/]System.EventHandler/*01000015*/
    IL_0012:  /* 7D   | (04)00003B       */ stfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionChange /* 0400003B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PlaylistCollectionChange

  .method /*06000094*/ public hidebysig specialname 
          instance void  add_PlaylistCollectionPlaylistAdded(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 84
  {
    // Method begins at RVA 0x2fb8
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003C       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistAdded /* 0400003C */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000061       */ castclass  AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/
    IL_0012:  /* 7D   | (04)00003C       */ stfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistAdded /* 0400003C */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PlaylistCollectionPlaylistAdded

  .method /*06000095*/ public hidebysig specialname 
          instance void  remove_PlaylistCollectionPlaylistAdded(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 84
  {
    // Method begins at RVA 0x2fd1
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003C       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistAdded /* 0400003C */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000061       */ castclass  AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/
    IL_0012:  /* 7D   | (04)00003C       */ stfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistAdded /* 0400003C */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PlaylistCollectionPlaylistAdded

  .method /*06000096*/ public hidebysig specialname 
          instance void  add_PlaylistCollectionPlaylistRemoved(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 8C
  {
    // Method begins at RVA 0x2fea
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003D       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistRemoved /* 0400003D */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000063       */ castclass  AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/
    IL_0012:  /* 7D   | (04)00003D       */ stfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistRemoved /* 0400003D */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PlaylistCollectionPlaylistRemoved

  .method /*06000097*/ public hidebysig specialname 
          instance void  remove_PlaylistCollectionPlaylistRemoved(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 8C
  {
    // Method begins at RVA 0x3003
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003D       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistRemoved /* 0400003D */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000063       */ castclass  AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/
    IL_0012:  /* 7D   | (04)00003D       */ stfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistRemoved /* 0400003D */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PlaylistCollectionPlaylistRemoved

  .method /*06000098*/ public hidebysig specialname 
          instance void  add_PlaylistCollectionPlaylistSetAsDeleted(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 94
  {
    // Method begins at RVA 0x301c
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003E       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistSetAsDeleted /* 0400003E */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000065       */ castclass  AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/
    IL_0012:  /* 7D   | (04)00003E       */ stfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistSetAsDeleted /* 0400003E */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_PlaylistCollectionPlaylistSetAsDeleted

  .method /*06000099*/ public hidebysig specialname 
          instance void  remove_PlaylistCollectionPlaylistSetAsDeleted(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 94
  {
    // Method begins at RVA 0x3035
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003E       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistSetAsDeleted /* 0400003E */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000065       */ castclass  AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/
    IL_0012:  /* 7D   | (04)00003E       */ stfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistSetAsDeleted /* 0400003E */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_PlaylistCollectionPlaylistSetAsDeleted

  .method /*0600009A*/ public hidebysig specialname 
          instance void  add_ModeChange(class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 9C
  {
    // Method begins at RVA 0x304e
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003F       */ ldfld      class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ModeChange /* 0400003F */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000067       */ castclass  AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/
    IL_0012:  /* 7D   | (04)00003F       */ stfld      class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ModeChange /* 0400003F */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_ModeChange

  .method /*0600009B*/ public hidebysig specialname 
          instance void  remove_ModeChange(class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 9C
  {
    // Method begins at RVA 0x3067
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)00003F       */ ldfld      class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ModeChange /* 0400003F */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000067       */ castclass  AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/
    IL_0012:  /* 7D   | (04)00003F       */ stfld      class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ModeChange /* 0400003F */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_ModeChange

  .method /*0600009C*/ public hidebysig specialname 
          instance void  add_MediaError(class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 A4
  {
    // Method begins at RVA 0x3080
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000040       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaError /* 04000040 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)000069       */ castclass  AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/
    IL_0012:  /* 7D   | (04)000040       */ stfld      class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaError /* 04000040 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_MediaError

  .method /*0600009D*/ public hidebysig specialname 
          instance void  remove_MediaError(class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 A4
  {
    // Method begins at RVA 0x3099
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000040       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaError /* 04000040 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)000069       */ castclass  AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/
    IL_0012:  /* 7D   | (04)000040       */ stfld      class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaError /* 04000040 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_MediaError

  .method /*0600009E*/ public hidebysig specialname 
          instance void  add_OpenPlaylistSwitch(class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 AC
  {
    // Method begins at RVA 0x30b2
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000041       */ ldfld      class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenPlaylistSwitch /* 04000041 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002B       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Combine(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                          class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002B */
    IL_000d:  /* 74   | (02)00006B       */ castclass  AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/
    IL_0012:  /* 7D   | (04)000041       */ stfld      class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenPlaylistSwitch /* 04000041 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::add_OpenPlaylistSwitch

  .method /*0600009F*/ public hidebysig specialname 
          instance void  remove_OpenPlaylistSwitch(class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ 'value') cil managed synchronized
  // SIG: 20 01 01 12 81 AC
  {
    // Method begins at RVA 0x30cb
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 7B   | (04)000041       */ ldfld      class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenPlaylistSwitch /* 04000041 */
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 28   | (0A)00002C       */ call       class [mscorlib/*23000002*/]System.Delegate/*0100002C*/ [mscorlib/*23000002*/]System.Delegate/*0100002C*/::Remove(class [mscorlib/*23000002*/]System.Delegate/*0100002C*/,
                                                                                                                                                                         class [mscorlib/*23000002*/]System.Delegate/*0100002C*/) /* 0A00002C */
    IL_000d:  /* 74   | (02)00006B       */ castclass  AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/
    IL_0012:  /* 7D   | (04)000041       */ stfld      class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenPlaylistSwitch /* 04000041 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::remove_OpenPlaylistSwitch

  .method /*060000A0*/ public hidebysig newslot virtual 
          instance void  openPlayer(string bstrURL) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x30e4
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)00028B       */ ldstr      "openPlayer" /* 7000028B */
    IL_000d:  /* 16   |                  */ ldc.i4.0
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)00002D       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::openPlayer(string) /* 0A00002D */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::openPlayer

  .method /*060000A1*/ public hidebysig newslot virtual 
          instance void  close() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x3106
    // Code size       32 (0x20)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0002A1       */ ldstr      "close" /* 700002A1 */
    IL_000d:  /* 16   |                  */ ldc.i4.0
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 6F   | (0A)00002E       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::close() /* 0A00002E */
    IL_001f:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::close

  .method /*060000A2*/ public hidebysig newslot virtual 
          instance void  launchURL(string bstrURL) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x3127
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0002AD       */ ldstr      "launchURL" /* 700002AD */
    IL_000d:  /* 16   |                  */ ldc.i4.0
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)00002F       */ callvirt   instance void [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::launchURL(string) /* 0A00002F */
    IL_0020:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::launchURL

  .method /*060000A3*/ public hidebysig newslot virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/ 
          newPlaylist(string bstrName,
                      string bstrURL) cil managed
  // SIG: 20 02 12 3D 0E 0E
  {
    // Method begins at RVA 0x314c
    // Code size       36 (0x24)
    .maxstack  3
    .locals /*11000001*/ init (class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/ V_0)
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0002C1       */ ldstr      "newPlaylist" /* 700002C1 */
    IL_000d:  /* 16   |                  */ ldc.i4.0
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 04   |                  */ ldarg.2
    IL_001c:  /* 6F   | (0A)000030       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::newPlaylist(string,
                                                                                                                                                                                                          string) /* 0A000030 */
    IL_0021:  /* 0A   |                  */ stloc.0
    IL_0022:  /* 06   |                  */ ldloc.0
    IL_0023:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::newPlaylist

  .method /*060000A4*/ public hidebysig newslot virtual 
          instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/ 
          newMedia(string bstrURL) cil managed
  // SIG: 20 01 12 2D 0E
  {
    // Method begins at RVA 0x317c
    // Code size       35 (0x23)
    .maxstack  3
    .locals /*11000002*/ init (class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/ V_0)
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_0006:  /* 2D   | 0C               */ brtrue.s   IL_0014

    IL_0008:  /* 72   | (70)0002D9       */ ldstr      "newMedia" /* 700002D9 */
    IL_000d:  /* 16   |                  */ ldc.i4.0
    IL_000e:  /* 73   | (0A)000008       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//InvalidActiveXStateException/*0100002A*/::.ctor(string,
                                                                                                                                                                                               valuetype [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ActiveXInvokeKind/*0100002B*/) /* 0A000008 */
    IL_0013:  /* 7A   |                  */ throw

    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
    IL_001a:  /* 03   |                  */ ldarg.1
    IL_001b:  /* 6F   | (0A)000031       */ callvirt   instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/ [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/::newMedia(string) /* 0A000031 */
    IL_0020:  /* 0A   |                  */ stloc.0
    IL_0021:  /* 06   |                  */ ldloc.0
    IL_0022:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::newMedia

  .method /*060000A5*/ family hidebysig virtual 
          instance void  CreateSink() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x31ac
    // Code size       51 (0x33)
    .maxstack  5
    .try
    {
      IL_0000:  /* 02   |                  */ ldarg.0
      IL_0001:  /* 02   |                  */ ldarg.0
      IL_0002:  /* 73   | (06)0001EF       */ newobj     instance void AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::.ctor(class AxWMPLib.AxWindowsMediaPlayer/*02000002*/) /* 060001EF */
      IL_0007:  /* 7D   | (04)000002       */ stfld      class AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::eventMulticaster /* 04000002 */
      IL_000c:  /* 02   |                  */ ldarg.0
      IL_000d:  /* 02   |                  */ ldarg.0
      IL_000e:  /* 7B   | (04)000001       */ ldfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
      IL_0013:  /* 02   |                  */ ldarg.0
      IL_0014:  /* 7B   | (04)000002       */ ldfld      class AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::eventMulticaster /* 04000002 */
      IL_0019:  /* D0   | (01)000004       */ ldtoken    [Interop.WMPLib/*23000003*/]WMPLib._WMPOCXEvents/*01000004*/
      IL_001e:  /* 28   | (0A)000032       */ call       class [mscorlib/*23000002*/]System.Type/*0100002D*/ [mscorlib/*23000002*/]System.Type/*0100002D*/::GetTypeFromHandle(valuetype [mscorlib/*23000002*/]System.RuntimeTypeHandle/*0100002E*/) /* 0A000032 */
      IL_0023:  /* 73   | (0A)000033       */ newobj     instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ConnectionPointCookie/*01000006*/::.ctor(object,
                                                                                                                                                                                          object,
                                                                                                                                                                                          class [mscorlib/*23000002*/]System.Type/*0100002D*/) /* 0A000033 */
      IL_0028:  /* 7D   | (04)000003       */ stfld      class [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ConnectionPointCookie/*01000006*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::cookie /* 04000003 */
      IL_002d:  /* DE   | 03               */ leave.s    IL_0032

    }  // end .try
    catch [mscorlib/*23000002*/]System.Exception/*0100002F*/ 
    {
      IL_002f:  /* 26   |                  */ pop
      IL_0030:  /* DE   | 00               */ leave.s    IL_0032

    }  // end handler
    // HEX: 00 00 00 00 2F 2F 00 03 2F 00 00 01
    IL_0032:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::CreateSink

  .method /*060000A6*/ family hidebysig virtual 
          instance void  DetachSink() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x31fc
    // Code size       17 (0x11)
    .maxstack  1
    .try
    {
      IL_0000:  /* 02   |                  */ ldarg.0
      IL_0001:  /* 7B   | (04)000003       */ ldfld      class [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ConnectionPointCookie/*01000006*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::cookie /* 04000003 */
      IL_0006:  /* 6F   | (0A)000034       */ callvirt   instance void [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*//ConnectionPointCookie/*01000006*/::Disconnect() /* 0A000034 */
      IL_000b:  /* DE   | 03               */ leave.s    IL_0010

    }  // end .try
    catch [mscorlib/*23000002*/]System.Exception/*0100002F*/ 
    {
      IL_000d:  /* 26   |                  */ pop
      IL_000e:  /* DE   | 00               */ leave.s    IL_0010

    }  // end handler
    // HEX: 00 00 00 00 0D 0D 00 03 2F 00 00 01
    IL_0010:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::DetachSink

  .method /*060000A7*/ family hidebysig virtual 
          instance void  AttachInterfaces() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x322c
    // Code size       23 (0x17)
    .maxstack  2
    .try
    {
      IL_0000:  /* 02   |                  */ ldarg.0
      IL_0001:  /* 02   |                  */ ldarg.0
      IL_0002:  /* 28   | (0A)000035       */ call       instance object [System.Windows.Forms/*23000001*/]System.Windows.Forms.AxHost/*01000001*/::GetOcx() /* 0A000035 */
      IL_0007:  /* 74   | (01)000005       */ castclass  [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/
      IL_000c:  /* 7D   | (04)000001       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayer4/*01000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ocx /* 04000001 */
      IL_0011:  /* DE   | 03               */ leave.s    IL_0016

    }  // end .try
    catch [mscorlib/*23000002*/]System.Exception/*0100002F*/ 
    {
      IL_0013:  /* 26   |                  */ pop
      IL_0014:  /* DE   | 00               */ leave.s    IL_0016

    }  // end handler
    // HEX: 00 00 00 00 13 13 00 03 2F 00 00 01
    IL_0016:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::AttachInterfaces

  .method /*060000A8*/ assembly hidebysig 
          instance void  RaiseOnDomainChange(object sender,
                                             class AxWMPLib._WMPOCXEvents_DomainChangeEvent/*02000004*/ e) cil managed
  // SIG: 20 02 01 1C 12 10
  {
    // Method begins at RVA 0x3260
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000004       */ ldfld      class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DomainChange /* 04000004 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000004       */ ldfld      class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DomainChange /* 04000004 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0000E7       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/::Invoke(object,
                                                                                                                                         class AxWMPLib._WMPOCXEvents_DomainChangeEvent/*02000004*/) /* 060000E7 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDomainChange

  .method /*060000A9*/ assembly hidebysig 
          instance void  RaiseOnSwitchedToPlayerApplication(object sender,
                                                            class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x3277
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000005       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToPlayerApplication /* 04000005 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000005       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToPlayerApplication /* 04000005 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnSwitchedToPlayerApplication

  .method /*060000AA*/ assembly hidebysig 
          instance void  RaiseOnSwitchedToControl(object sender,
                                                  class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x328e
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000006       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToControl /* 04000006 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000006       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::SwitchedToControl /* 04000006 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnSwitchedToControl

  .method /*060000AB*/ assembly hidebysig 
          instance void  RaiseOnPlayerDockedStateChange(object sender,
                                                        class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x32a5
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000007       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerDockedStateChange /* 04000007 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000007       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerDockedStateChange /* 04000007 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPlayerDockedStateChange

  .method /*060000AC*/ assembly hidebysig 
          instance void  RaiseOnPlayerReconnect(object sender,
                                                class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x32bc
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000008       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerReconnect /* 04000008 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000008       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayerReconnect /* 04000008 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPlayerReconnect

  .method /*060000AD*/ assembly hidebysig 
          instance void  RaiseOnClickEvent(object sender,
                                           class AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/ e) cil managed
  // SIG: 20 02 01 1C 12 18
  {
    // Method begins at RVA 0x32d3
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000009       */ ldfld      class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ClickEvent /* 04000009 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000009       */ ldfld      class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ClickEvent /* 04000009 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0000EC       */ callvirt   instance void AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/::Invoke(object,
                                                                                                                                  class AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/) /* 060000EC */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnClickEvent

  .method /*060000AE*/ assembly hidebysig 
          instance void  RaiseOnDoubleClickEvent(object sender,
                                                 class AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/ e) cil managed
  // SIG: 20 02 01 1C 12 20
  {
    // Method begins at RVA 0x32ea
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00000A       */ ldfld      class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DoubleClickEvent /* 0400000A */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00000A       */ ldfld      class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DoubleClickEvent /* 0400000A */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0000F1       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/::Invoke(object,
                                                                                                                                        class AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/) /* 060000F1 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDoubleClickEvent

  .method /*060000AF*/ assembly hidebysig 
          instance void  RaiseOnKeyDownEvent(object sender,
                                             class AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/ e) cil managed
  // SIG: 20 02 01 1C 12 28
  {
    // Method begins at RVA 0x3301
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00000B       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyDownEvent /* 0400000B */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00000B       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyDownEvent /* 0400000B */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0000F6       */ callvirt   instance void AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/::Invoke(object,
                                                                                                                                    class AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/) /* 060000F6 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnKeyDownEvent

  .method /*060000B0*/ assembly hidebysig 
          instance void  RaiseOnKeyPressEvent(object sender,
                                              class AxWMPLib._WMPOCXEvents_KeyPressEvent/*0200000C*/ e) cil managed
  // SIG: 20 02 01 1C 12 30
  {
    // Method begins at RVA 0x3318
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00000C       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyPressEvent /* 0400000C */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00000C       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyPressEvent /* 0400000C */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0000FB       */ callvirt   instance void AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/::Invoke(object,
                                                                                                                                     class AxWMPLib._WMPOCXEvents_KeyPressEvent/*0200000C*/) /* 060000FB */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnKeyPressEvent

  .method /*060000B1*/ assembly hidebysig 
          instance void  RaiseOnKeyUpEvent(object sender,
                                           class AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/ e) cil managed
  // SIG: 20 02 01 1C 12 38
  {
    // Method begins at RVA 0x332f
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00000D       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyUpEvent /* 0400000D */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00000D       */ ldfld      class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::KeyUpEvent /* 0400000D */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000100       */ callvirt   instance void AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/::Invoke(object,
                                                                                                                                  class AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/) /* 06000100 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnKeyUpEvent

  .method /*060000B2*/ assembly hidebysig 
          instance void  RaiseOnMouseDownEvent(object sender,
                                               class AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/ e) cil managed
  // SIG: 20 02 01 1C 12 40
  {
    // Method begins at RVA 0x3346
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00000E       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseDownEvent /* 0400000E */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00000E       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseDownEvent /* 0400000E */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000105       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/::Invoke(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/) /* 06000105 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMouseDownEvent

  .method /*060000B3*/ assembly hidebysig 
          instance void  RaiseOnMouseMoveEvent(object sender,
                                               class AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/ e) cil managed
  // SIG: 20 02 01 1C 12 48
  {
    // Method begins at RVA 0x335d
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00000F       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseMoveEvent /* 0400000F */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00000F       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseMoveEvent /* 0400000F */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00010A       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/::Invoke(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/) /* 0600010A */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMouseMoveEvent

  .method /*060000B4*/ assembly hidebysig 
          instance void  RaiseOnMouseUpEvent(object sender,
                                             class AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/ e) cil managed
  // SIG: 20 02 01 1C 12 50
  {
    // Method begins at RVA 0x3374
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000010       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseUpEvent /* 04000010 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000010       */ ldfld      class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MouseUpEvent /* 04000010 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00010F       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/::Invoke(object,
                                                                                                                                    class AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/) /* 0600010F */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMouseUpEvent

  .method /*060000B5*/ assembly hidebysig 
          instance void  RaiseOnDeviceConnect(object sender,
                                              class AxWMPLib._WMPOCXEvents_DeviceConnectEvent/*02000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 58
  {
    // Method begins at RVA 0x338b
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000011       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceConnect /* 04000011 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000011       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceConnect /* 04000011 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000114       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/::Invoke(object,
                                                                                                                                          class AxWMPLib._WMPOCXEvents_DeviceConnectEvent/*02000016*/) /* 06000114 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDeviceConnect

  .method /*060000B6*/ assembly hidebysig 
          instance void  RaiseOnDeviceDisconnect(object sender,
                                                 class AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent/*02000018*/ e) cil managed
  // SIG: 20 02 01 1C 12 60
  {
    // Method begins at RVA 0x33a2
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000012       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceDisconnect /* 04000012 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000012       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceDisconnect /* 04000012 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000119       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/::Invoke(object,
                                                                                                                                             class AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent/*02000018*/) /* 06000119 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDeviceDisconnect

  .method /*060000B7*/ assembly hidebysig 
          instance void  RaiseOnDeviceStatusChange(object sender,
                                                   class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/ e) cil managed
  // SIG: 20 02 01 1C 12 68
  {
    // Method begins at RVA 0x33b9
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000013       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceStatusChange /* 04000013 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000013       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceStatusChange /* 04000013 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00011E       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/::Invoke(object,
                                                                                                                                               class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/) /* 0600011E */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDeviceStatusChange

  .method /*060000B8*/ assembly hidebysig 
          instance void  RaiseOnDeviceSyncStateChange(object sender,
                                                      class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/ e) cil managed
  // SIG: 20 02 01 1C 12 70
  {
    // Method begins at RVA 0x33d0
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000014       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncStateChange /* 04000014 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000014       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncStateChange /* 04000014 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000123       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/::Invoke(object,
                                                                                                                                                  class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/) /* 06000123 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDeviceSyncStateChange

  .method /*060000B9*/ assembly hidebysig 
          instance void  RaiseOnDeviceSyncError(object sender,
                                                class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/ e) cil managed
  // SIG: 20 02 01 1C 12 78
  {
    // Method begins at RVA 0x33e7
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000015       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncError /* 04000015 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000015       */ ldfld      class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DeviceSyncError /* 04000015 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000128       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/::Invoke(object,
                                                                                                                                            class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/) /* 06000128 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDeviceSyncError

  .method /*060000BA*/ assembly hidebysig 
          instance void  RaiseOnCreatePartnershipComplete(object sender,
                                                          class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 80
  {
    // Method begins at RVA 0x33fe
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000016       */ ldfld      class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CreatePartnershipComplete /* 04000016 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000016       */ ldfld      class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CreatePartnershipComplete /* 04000016 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00012D       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/::Invoke(object,
                                                                                                                                                      class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/) /* 0600012D */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCreatePartnershipComplete

  .method /*060000BB*/ assembly hidebysig 
          instance void  RaiseOnCdromRipStateChange(object sender,
                                                    class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 88
  {
    // Method begins at RVA 0x3415
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000017       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipStateChange /* 04000017 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000017       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipStateChange /* 04000017 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000132       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/::Invoke(object,
                                                                                                                                                class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/) /* 06000132 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCdromRipStateChange

  .method /*060000BC*/ assembly hidebysig 
          instance void  RaiseOnCdromRipMediaError(object sender,
                                                   class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 90
  {
    // Method begins at RVA 0x342c
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000018       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipMediaError /* 04000018 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000018       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromRipMediaError /* 04000018 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000137       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/::Invoke(object,
                                                                                                                                               class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/) /* 06000137 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCdromRipMediaError

  .method /*060000BD*/ assembly hidebysig 
          instance void  RaiseOnCdromBurnStateChange(object sender,
                                                     class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 98
  {
    // Method begins at RVA 0x3443
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000019       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnStateChange /* 04000019 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000019       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnStateChange /* 04000019 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00013C       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/::Invoke(object,
                                                                                                                                                 class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/) /* 0600013C */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCdromBurnStateChange

  .method /*060000BE*/ assembly hidebysig 
          instance void  RaiseOnCdromBurnMediaError(object sender,
                                                    class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 A0
  {
    // Method begins at RVA 0x345a
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00001A       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnMediaError /* 0400001A */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00001A       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnMediaError /* 0400001A */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000141       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/::Invoke(object,
                                                                                                                                                class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/) /* 06000141 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCdromBurnMediaError

  .method /*060000BF*/ assembly hidebysig 
          instance void  RaiseOnCdromBurnError(object sender,
                                               class AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 A8
  {
    // Method begins at RVA 0x3471
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00001B       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnError /* 0400001B */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00001B       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromBurnError /* 0400001B */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000146       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/::Invoke(object,
                                                                                                                                           class AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/) /* 06000146 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCdromBurnError

  .method /*060000C0*/ assembly hidebysig 
          instance void  RaiseOnLibraryConnect(object sender,
                                               class AxWMPLib._WMPOCXEvents_LibraryConnectEvent/*0200002C*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 B0
  {
    // Method begins at RVA 0x3488
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00001C       */ ldfld      class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryConnect /* 0400001C */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00001C       */ ldfld      class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryConnect /* 0400001C */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00014B       */ callvirt   instance void AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/::Invoke(object,
                                                                                                                                           class AxWMPLib._WMPOCXEvents_LibraryConnectEvent/*0200002C*/) /* 0600014B */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnLibraryConnect

  .method /*060000C1*/ assembly hidebysig 
          instance void  RaiseOnLibraryDisconnect(object sender,
                                                  class AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent/*0200002E*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 B8
  {
    // Method begins at RVA 0x349f
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00001D       */ ldfld      class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryDisconnect /* 0400001D */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00001D       */ ldfld      class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::LibraryDisconnect /* 0400001D */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000150       */ callvirt   instance void AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/::Invoke(object,
                                                                                                                                              class AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent/*0200002E*/) /* 06000150 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnLibraryDisconnect

  .method /*060000C2*/ assembly hidebysig 
          instance void  RaiseOnFolderScanStateChange(object sender,
                                                      class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent/*02000030*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 C0
  {
    // Method begins at RVA 0x34b6
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00001E       */ ldfld      class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::FolderScanStateChange /* 0400001E */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00001E       */ ldfld      class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::FolderScanStateChange /* 0400001E */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000155       */ callvirt   instance void AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/::Invoke(object,
                                                                                                                                                  class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent/*02000030*/) /* 06000155 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnFolderScanStateChange

  .method /*060000C3*/ assembly hidebysig 
          instance void  RaiseOnStringCollectionChange(object sender,
                                                       class AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 C8
  {
    // Method begins at RVA 0x34cd
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00001F       */ ldfld      class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StringCollectionChange /* 0400001F */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00001F       */ ldfld      class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StringCollectionChange /* 0400001F */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00015A       */ callvirt   instance void AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/::Invoke(object,
                                                                                                                                                   class AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/) /* 0600015A */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnStringCollectionChange

  .method /*060000C4*/ assembly hidebysig 
          instance void  RaiseOnMediaCollectionMediaAdded(object sender,
                                                          class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent/*02000034*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 D0
  {
    // Method begins at RVA 0x34e4
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000020       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaAdded /* 04000020 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000020       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaAdded /* 04000020 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00015F       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/::Invoke(object,
                                                                                                                                                      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent/*02000034*/) /* 0600015F */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMediaCollectionMediaAdded

  .method /*060000C5*/ assembly hidebysig 
          instance void  RaiseOnMediaCollectionMediaRemoved(object sender,
                                                            class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent/*02000036*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 D8
  {
    // Method begins at RVA 0x34fb
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000021       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaRemoved /* 04000021 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000021       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionMediaRemoved /* 04000021 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000164       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/::Invoke(object,
                                                                                                                                                        class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent/*02000036*/) /* 06000164 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMediaCollectionMediaRemoved

  .method /*060000C6*/ assembly hidebysig 
          instance void  RaiseOnOpenStateChange(object sender,
                                                class AxWMPLib._WMPOCXEvents_OpenStateChangeEvent/*02000038*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 E0
  {
    // Method begins at RVA 0x3512
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000022       */ ldfld      class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenStateChange /* 04000022 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000022       */ ldfld      class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenStateChange /* 04000022 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000169       */ callvirt   instance void AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/::Invoke(object,
                                                                                                                                            class AxWMPLib._WMPOCXEvents_OpenStateChangeEvent/*02000038*/) /* 06000169 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnOpenStateChange

  .method /*060000C7*/ assembly hidebysig 
          instance void  RaiseOnPlayStateChange(object sender,
                                                class AxWMPLib._WMPOCXEvents_PlayStateChangeEvent/*0200003A*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 E8
  {
    // Method begins at RVA 0x3529
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000023       */ ldfld      class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayStateChange /* 04000023 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000023       */ ldfld      class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlayStateChange /* 04000023 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00016E       */ callvirt   instance void AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/::Invoke(object,
                                                                                                                                            class AxWMPLib._WMPOCXEvents_PlayStateChangeEvent/*0200003A*/) /* 0600016E */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPlayStateChange

  .method /*060000C8*/ assembly hidebysig 
          instance void  RaiseOnAudioLanguageChange(object sender,
                                                    class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent/*0200003C*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 F0
  {
    // Method begins at RVA 0x3540
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000024       */ ldfld      class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::AudioLanguageChange /* 04000024 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000024       */ ldfld      class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::AudioLanguageChange /* 04000024 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000173       */ callvirt   instance void AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/::Invoke(object,
                                                                                                                                                class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent/*0200003C*/) /* 06000173 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnAudioLanguageChange

  .method /*060000C9*/ assembly hidebysig 
          instance void  RaiseOnStatusChange(object sender,
                                             class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x3557
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000025       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StatusChange /* 04000025 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000025       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::StatusChange /* 04000025 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnStatusChange

  .method /*060000CA*/ assembly hidebysig 
          instance void  RaiseOnScriptCommand(object sender,
                                              class AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/ e) cil managed
  // SIG: 20 02 01 1C 12 80 F8
  {
    // Method begins at RVA 0x356e
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000026       */ ldfld      class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ScriptCommand /* 04000026 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000026       */ ldfld      class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ScriptCommand /* 04000026 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000178       */ callvirt   instance void AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/::Invoke(object,
                                                                                                                                          class AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/) /* 06000178 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnScriptCommand

  .method /*060000CB*/ assembly hidebysig 
          instance void  RaiseOnNewStream(object sender,
                                          class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x3585
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000027       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::NewStream /* 04000027 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000027       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::NewStream /* 04000027 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnNewStream

  .method /*060000CC*/ assembly hidebysig 
          instance void  RaiseOnDisconnect(object sender,
                                           class AxWMPLib._WMPOCXEvents_DisconnectEvent/*02000040*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 00
  {
    // Method begins at RVA 0x359c
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000028       */ ldfld      class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Disconnect /* 04000028 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000028       */ ldfld      class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Disconnect /* 04000028 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00017D       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/::Invoke(object,
                                                                                                                                       class AxWMPLib._WMPOCXEvents_DisconnectEvent/*02000040*/) /* 0600017D */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDisconnect

  .method /*060000CD*/ assembly hidebysig 
          instance void  RaiseOnBuffering(object sender,
                                          class AxWMPLib._WMPOCXEvents_BufferingEvent/*02000042*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 08
  {
    // Method begins at RVA 0x35b3
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000029       */ ldfld      class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Buffering /* 04000029 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000029       */ ldfld      class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Buffering /* 04000029 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000182       */ callvirt   instance void AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/::Invoke(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_BufferingEvent/*02000042*/) /* 06000182 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnBuffering

  .method /*060000CE*/ assembly hidebysig 
          instance void  RaiseOnErrorEvent(object sender,
                                           class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x35ca
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00002A       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ErrorEvent /* 0400002A */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00002A       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ErrorEvent /* 0400002A */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnErrorEvent

  .method /*060000CF*/ assembly hidebysig 
          instance void  RaiseOnWarning(object sender,
                                        class AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 10
  {
    // Method begins at RVA 0x35e1
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00002B       */ ldfld      class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Warning /* 0400002B */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00002B       */ ldfld      class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::Warning /* 0400002B */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000187       */ callvirt   instance void AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/::Invoke(object,
                                                                                                                                    class AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/) /* 06000187 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnWarning

  .method /*060000D0*/ assembly hidebysig 
          instance void  RaiseOnEndOfStream(object sender,
                                            class AxWMPLib._WMPOCXEvents_EndOfStreamEvent/*02000046*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 18
  {
    // Method begins at RVA 0x35f8
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00002C       */ ldfld      class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::EndOfStream /* 0400002C */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00002C       */ ldfld      class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::EndOfStream /* 0400002C */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00018C       */ callvirt   instance void AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/::Invoke(object,
                                                                                                                                        class AxWMPLib._WMPOCXEvents_EndOfStreamEvent/*02000046*/) /* 0600018C */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnEndOfStream

  .method /*060000D1*/ assembly hidebysig 
          instance void  RaiseOnPositionChange(object sender,
                                               class AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 20
  {
    // Method begins at RVA 0x360f
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00002D       */ ldfld      class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PositionChange /* 0400002D */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00002D       */ ldfld      class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PositionChange /* 0400002D */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000191       */ callvirt   instance void AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/::Invoke(object,
                                                                                                                                           class AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/) /* 06000191 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPositionChange

  .method /*060000D2*/ assembly hidebysig 
          instance void  RaiseOnMarkerHit(object sender,
                                          class AxWMPLib._WMPOCXEvents_MarkerHitEvent/*0200004A*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 28
  {
    // Method begins at RVA 0x3626
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00002E       */ ldfld      class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MarkerHit /* 0400002E */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00002E       */ ldfld      class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MarkerHit /* 0400002E */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)000196       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/::Invoke(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_MarkerHitEvent/*0200004A*/) /* 06000196 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMarkerHit

  .method /*060000D3*/ assembly hidebysig 
          instance void  RaiseOnDurationUnitChange(object sender,
                                                   class AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent/*0200004C*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 30
  {
    // Method begins at RVA 0x363d
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00002F       */ ldfld      class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DurationUnitChange /* 0400002F */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00002F       */ ldfld      class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::DurationUnitChange /* 0400002F */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)00019B       */ callvirt   instance void AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/::Invoke(object,
                                                                                                                                               class AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent/*0200004C*/) /* 0600019B */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnDurationUnitChange

  .method /*060000D4*/ assembly hidebysig 
          instance void  RaiseOnCdromMediaChange(object sender,
                                                 class AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent/*0200004E*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 38
  {
    // Method begins at RVA 0x3654
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000030       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromMediaChange /* 04000030 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000030       */ ldfld      class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CdromMediaChange /* 04000030 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001A0       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/::Invoke(object,
                                                                                                                                             class AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent/*0200004E*/) /* 060001A0 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCdromMediaChange

  .method /*060000D5*/ assembly hidebysig 
          instance void  RaiseOnPlaylistChange(object sender,
                                               class AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 40
  {
    // Method begins at RVA 0x366b
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000031       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistChange /* 04000031 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000031       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistChange /* 04000031 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001A5       */ callvirt   instance void AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/::Invoke(object,
                                                                                                                                           class AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/) /* 060001A5 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPlaylistChange

  .method /*060000D6*/ assembly hidebysig 
          instance void  RaiseOnCurrentPlaylistChange(object sender,
                                                      class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent/*02000052*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 48
  {
    // Method begins at RVA 0x3682
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000032       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistChange /* 04000032 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000032       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistChange /* 04000032 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001AA       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/::Invoke(object,
                                                                                                                                                  class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent/*02000052*/) /* 060001AA */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCurrentPlaylistChange

  .method /*060000D7*/ assembly hidebysig 
          instance void  RaiseOnCurrentPlaylistItemAvailable(object sender,
                                                             class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent/*02000054*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 50
  {
    // Method begins at RVA 0x3699
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000033       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistItemAvailable /* 04000033 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000033       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentPlaylistItemAvailable /* 04000033 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001AF       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/::Invoke(object,
                                                                                                                                                         class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent/*02000054*/) /* 060001AF */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCurrentPlaylistItemAvailable

  .method /*060000D8*/ assembly hidebysig 
          instance void  RaiseOnMediaChange(object sender,
                                            class AxWMPLib._WMPOCXEvents_MediaChangeEvent/*02000056*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 58
  {
    // Method begins at RVA 0x36b0
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000034       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaChange /* 04000034 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000034       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaChange /* 04000034 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001B4       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/::Invoke(object,
                                                                                                                                        class AxWMPLib._WMPOCXEvents_MediaChangeEvent/*02000056*/) /* 060001B4 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMediaChange

  .method /*060000D9*/ assembly hidebysig 
          instance void  RaiseOnCurrentMediaItemAvailable(object sender,
                                                          class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent/*02000058*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 60
  {
    // Method begins at RVA 0x36c7
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000035       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentMediaItemAvailable /* 04000035 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000035       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentMediaItemAvailable /* 04000035 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001B9       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/::Invoke(object,
                                                                                                                                                      class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent/*02000058*/) /* 060001B9 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCurrentMediaItemAvailable

  .method /*060000DA*/ assembly hidebysig 
          instance void  RaiseOnCurrentItemChange(object sender,
                                                  class AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent/*0200005A*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 68
  {
    // Method begins at RVA 0x36de
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000036       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentItemChange /* 04000036 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000036       */ ldfld      class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::CurrentItemChange /* 04000036 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001BE       */ callvirt   instance void AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/::Invoke(object,
                                                                                                                                              class AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent/*0200005A*/) /* 060001BE */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnCurrentItemChange

  .method /*060000DB*/ assembly hidebysig 
          instance void  RaiseOnMediaCollectionChange(object sender,
                                                      class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x36f5
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000037       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionChange /* 04000037 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000037       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionChange /* 04000037 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMediaCollectionChange

  .method /*060000DC*/ assembly hidebysig 
          instance void  RaiseOnMediaCollectionAttributeStringAdded(object sender,
                                                                    class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 70
  {
    // Method begins at RVA 0x370c
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000038       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringAdded /* 04000038 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000038       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringAdded /* 04000038 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001C3       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/::Invoke(object,
                                                                                                                                                                class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/) /* 060001C3 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMediaCollectionAttributeStringAdded

  .method /*060000DD*/ assembly hidebysig 
          instance void  RaiseOnMediaCollectionAttributeStringRemoved(object sender,
                                                                      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 78
  {
    // Method begins at RVA 0x3723
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000039       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringRemoved /* 04000039 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000039       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringRemoved /* 04000039 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001C8       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/::Invoke(object,
                                                                                                                                                                  class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/) /* 060001C8 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMediaCollectionAttributeStringRemoved

  .method /*060000DE*/ assembly hidebysig 
          instance void  RaiseOnMediaCollectionAttributeStringChanged(object sender,
                                                                      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 80
  {
    // Method begins at RVA 0x373a
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00003A       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringChanged /* 0400003A */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00003A       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaCollectionAttributeStringChanged /* 0400003A */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001CD       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/::Invoke(object,
                                                                                                                                                                  class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/) /* 060001CD */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMediaCollectionAttributeStringChanged

  .method /*060000DF*/ assembly hidebysig 
          instance void  RaiseOnPlaylistCollectionChange(object sender,
                                                         class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ e) cil managed
  // SIG: 20 02 01 1C 12 59
  {
    // Method begins at RVA 0x3751
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00003B       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionChange /* 0400003B */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00003B       */ ldfld      class [mscorlib/*23000002*/]System.EventHandler/*01000015*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionChange /* 0400003B */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (0A)000036       */ callvirt   instance void [mscorlib/*23000002*/]System.EventHandler/*01000015*/::Invoke(object,
                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 0A000036 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPlaylistCollectionChange

  .method /*060000E0*/ assembly hidebysig 
          instance void  RaiseOnPlaylistCollectionPlaylistAdded(object sender,
                                                                class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent/*02000062*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 88
  {
    // Method begins at RVA 0x3768
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00003C       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistAdded /* 0400003C */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00003C       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistAdded /* 0400003C */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001D2       */ callvirt   instance void AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/::Invoke(object,
                                                                                                                                                            class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent/*02000062*/) /* 060001D2 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPlaylistCollectionPlaylistAdded

  .method /*060000E1*/ assembly hidebysig 
          instance void  RaiseOnPlaylistCollectionPlaylistRemoved(object sender,
                                                                  class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent/*02000064*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 90
  {
    // Method begins at RVA 0x377f
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00003D       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistRemoved /* 0400003D */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00003D       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistRemoved /* 0400003D */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001D7       */ callvirt   instance void AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/::Invoke(object,
                                                                                                                                                              class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent/*02000064*/) /* 060001D7 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPlaylistCollectionPlaylistRemoved

  .method /*060000E2*/ assembly hidebysig 
          instance void  RaiseOnPlaylistCollectionPlaylistSetAsDeleted(object sender,
                                                                       class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 98
  {
    // Method begins at RVA 0x3796
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00003E       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistSetAsDeleted /* 0400003E */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00003E       */ ldfld      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::PlaylistCollectionPlaylistSetAsDeleted /* 0400003E */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001DC       */ callvirt   instance void AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/::Invoke(object,
                                                                                                                                                                   class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/) /* 060001DC */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnPlaylistCollectionPlaylistSetAsDeleted

  .method /*060000E3*/ assembly hidebysig 
          instance void  RaiseOnModeChange(object sender,
                                           class AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 A0
  {
    // Method begins at RVA 0x37ad
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)00003F       */ ldfld      class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ModeChange /* 0400003F */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00003F       */ ldfld      class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::ModeChange /* 0400003F */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001E1       */ callvirt   instance void AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/::Invoke(object,
                                                                                                                                       class AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/) /* 060001E1 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnModeChange

  .method /*060000E4*/ assembly hidebysig 
          instance void  RaiseOnMediaError(object sender,
                                           class AxWMPLib._WMPOCXEvents_MediaErrorEvent/*0200006A*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 A8
  {
    // Method begins at RVA 0x37c4
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000040       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaError /* 04000040 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000040       */ ldfld      class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::MediaError /* 04000040 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001E6       */ callvirt   instance void AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/::Invoke(object,
                                                                                                                                       class AxWMPLib._WMPOCXEvents_MediaErrorEvent/*0200006A*/) /* 060001E6 */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnMediaError

  .method /*060000E5*/ assembly hidebysig 
          instance void  RaiseOnOpenPlaylistSwitch(object sender,
                                                   class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent/*0200006C*/ e) cil managed
  // SIG: 20 02 01 1C 12 81 B0
  {
    // Method begins at RVA 0x37db
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000041       */ ldfld      class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenPlaylistSwitch /* 04000041 */
    IL_0006:  /* 2C   | 0D               */ brfalse.s  IL_0015

    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)000041       */ ldfld      class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::OpenPlaylistSwitch /* 04000041 */
    IL_000e:  /* 03   |                  */ ldarg.1
    IL_000f:  /* 04   |                  */ ldarg.2
    IL_0010:  /* 6F   | (06)0001EB       */ callvirt   instance void AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/::Invoke(object,
                                                                                                                                               class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent/*0200006C*/) /* 060001EB */
    IL_0015:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayer::RaiseOnOpenPlaylistSwitch

  .event /*14000001*/ AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/ DomainChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_DomainChange(class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/) /* 06000024 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_DomainChange(class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler/*02000003*/) /* 06000025 */
  } // end of event AxWindowsMediaPlayer::DomainChange
  .event /*14000002*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ SwitchedToPlayerApplication
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_SwitchedToPlayerApplication(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000026 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_SwitchedToPlayerApplication(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000027 */
  } // end of event AxWindowsMediaPlayer::SwitchedToPlayerApplication
  .event /*14000003*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ SwitchedToControl
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_SwitchedToControl(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000028 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_SwitchedToControl(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000029 */
  } // end of event AxWindowsMediaPlayer::SwitchedToControl
  .event /*14000004*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ PlayerDockedStateChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PlayerDockedStateChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 0600002A */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PlayerDockedStateChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 0600002B */
  } // end of event AxWindowsMediaPlayer::PlayerDockedStateChange
  .event /*14000005*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ PlayerReconnect
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PlayerReconnect(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 0600002D */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PlayerReconnect(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 0600002C */
  } // end of event AxWindowsMediaPlayer::PlayerReconnect
  .event /*14000006*/ AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/ ClickEvent
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_ClickEvent(class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/) /* 0600002E */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_ClickEvent(class AxWMPLib._WMPOCXEvents_ClickEventHandler/*02000005*/) /* 0600002F */
  } // end of event AxWindowsMediaPlayer::ClickEvent
  .event /*14000007*/ AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/ DoubleClickEvent
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_DoubleClickEvent(class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/) /* 06000030 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_DoubleClickEvent(class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler/*02000007*/) /* 06000031 */
  } // end of event AxWindowsMediaPlayer::DoubleClickEvent
  .event /*14000008*/ AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/ KeyDownEvent
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_KeyDownEvent(class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/) /* 06000033 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_KeyDownEvent(class AxWMPLib._WMPOCXEvents_KeyDownEventHandler/*02000009*/) /* 06000032 */
  } // end of event AxWindowsMediaPlayer::KeyDownEvent
  .event /*14000009*/ AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/ KeyPressEvent
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_KeyPressEvent(class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/) /* 06000035 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_KeyPressEvent(class AxWMPLib._WMPOCXEvents_KeyPressEventHandler/*0200000B*/) /* 06000034 */
  } // end of event AxWindowsMediaPlayer::KeyPressEvent
  .event /*1400000A*/ AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/ KeyUpEvent
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_KeyUpEvent(class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/) /* 06000037 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_KeyUpEvent(class AxWMPLib._WMPOCXEvents_KeyUpEventHandler/*0200000D*/) /* 06000036 */
  } // end of event AxWindowsMediaPlayer::KeyUpEvent
  .event /*1400000B*/ AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/ MouseDownEvent
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MouseDownEvent(class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/) /* 06000038 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MouseDownEvent(class AxWMPLib._WMPOCXEvents_MouseDownEventHandler/*0200000F*/) /* 06000039 */
  } // end of event AxWindowsMediaPlayer::MouseDownEvent
  .event /*1400000C*/ AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/ MouseMoveEvent
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MouseMoveEvent(class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/) /* 0600003B */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MouseMoveEvent(class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler/*02000011*/) /* 0600003A */
  } // end of event AxWindowsMediaPlayer::MouseMoveEvent
  .event /*1400000D*/ AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/ MouseUpEvent
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MouseUpEvent(class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/) /* 0600003D */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MouseUpEvent(class AxWMPLib._WMPOCXEvents_MouseUpEventHandler/*02000013*/) /* 0600003C */
  } // end of event AxWindowsMediaPlayer::MouseUpEvent
  .event /*1400000E*/ AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/ DeviceConnect
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_DeviceConnect(class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/) /* 0600003E */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_DeviceConnect(class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler/*02000015*/) /* 0600003F */
  } // end of event AxWindowsMediaPlayer::DeviceConnect
  .event /*1400000F*/ AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/ DeviceDisconnect
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_DeviceDisconnect(class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/) /* 06000040 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_DeviceDisconnect(class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler/*02000017*/) /* 06000041 */
  } // end of event AxWindowsMediaPlayer::DeviceDisconnect
  .event /*14000010*/ AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/ DeviceStatusChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_DeviceStatusChange(class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/) /* 06000042 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_DeviceStatusChange(class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler/*02000019*/) /* 06000043 */
  } // end of event AxWindowsMediaPlayer::DeviceStatusChange
  .event /*14000011*/ AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/ DeviceSyncStateChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_DeviceSyncStateChange(class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/) /* 06000045 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_DeviceSyncStateChange(class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler/*0200001B*/) /* 06000044 */
  } // end of event AxWindowsMediaPlayer::DeviceSyncStateChange
  .event /*14000012*/ AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/ DeviceSyncError
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_DeviceSyncError(class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/) /* 06000047 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_DeviceSyncError(class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler/*0200001D*/) /* 06000046 */
  } // end of event AxWindowsMediaPlayer::DeviceSyncError
  .event /*14000013*/ AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/ CreatePartnershipComplete
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CreatePartnershipComplete(class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/) /* 06000049 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CreatePartnershipComplete(class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler/*0200001F*/) /* 06000048 */
  } // end of event AxWindowsMediaPlayer::CreatePartnershipComplete
  .event /*14000014*/ AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/ CdromRipStateChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CdromRipStateChange(class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/) /* 0600004A */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CdromRipStateChange(class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler/*02000021*/) /* 0600004B */
  } // end of event AxWindowsMediaPlayer::CdromRipStateChange
  .event /*14000015*/ AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/ CdromRipMediaError
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CdromRipMediaError(class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/) /* 0600004D */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CdromRipMediaError(class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler/*02000023*/) /* 0600004C */
  } // end of event AxWindowsMediaPlayer::CdromRipMediaError
  .event /*14000016*/ AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/ CdromBurnStateChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CdromBurnStateChange(class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/) /* 0600004F */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CdromBurnStateChange(class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler/*02000025*/) /* 0600004E */
  } // end of event AxWindowsMediaPlayer::CdromBurnStateChange
  .event /*14000017*/ AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/ CdromBurnMediaError
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CdromBurnMediaError(class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/) /* 06000050 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CdromBurnMediaError(class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler/*02000027*/) /* 06000051 */
  } // end of event AxWindowsMediaPlayer::CdromBurnMediaError
  .event /*14000018*/ AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/ CdromBurnError
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CdromBurnError(class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/) /* 06000052 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CdromBurnError(class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler/*02000029*/) /* 06000053 */
  } // end of event AxWindowsMediaPlayer::CdromBurnError
  .event /*14000019*/ AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/ LibraryConnect
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_LibraryConnect(class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/) /* 06000054 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_LibraryConnect(class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler/*0200002B*/) /* 06000055 */
  } // end of event AxWindowsMediaPlayer::LibraryConnect
  .event /*1400001A*/ AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/ LibraryDisconnect
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_LibraryDisconnect(class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/) /* 06000056 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_LibraryDisconnect(class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler/*0200002D*/) /* 06000057 */
  } // end of event AxWindowsMediaPlayer::LibraryDisconnect
  .event /*1400001B*/ AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/ FolderScanStateChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_FolderScanStateChange(class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/) /* 06000058 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_FolderScanStateChange(class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler/*0200002F*/) /* 06000059 */
  } // end of event AxWindowsMediaPlayer::FolderScanStateChange
  .event /*1400001C*/ AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/ StringCollectionChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_StringCollectionChange(class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/) /* 0600005B */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_StringCollectionChange(class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler/*02000031*/) /* 0600005A */
  } // end of event AxWindowsMediaPlayer::StringCollectionChange
  .event /*1400001D*/ AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/ MediaCollectionMediaAdded
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MediaCollectionMediaAdded(class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/) /* 0600005D */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MediaCollectionMediaAdded(class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler/*02000033*/) /* 0600005C */
  } // end of event AxWindowsMediaPlayer::MediaCollectionMediaAdded
  .event /*1400001E*/ AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/ MediaCollectionMediaRemoved
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MediaCollectionMediaRemoved(class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/) /* 0600005E */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MediaCollectionMediaRemoved(class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler/*02000035*/) /* 0600005F */
  } // end of event AxWindowsMediaPlayer::MediaCollectionMediaRemoved
  .event /*1400001F*/ AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/ OpenStateChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_OpenStateChange(class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/) /* 06000061 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_OpenStateChange(class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler/*02000037*/) /* 06000060 */
  } // end of event AxWindowsMediaPlayer::OpenStateChange
  .event /*14000020*/ AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/ PlayStateChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PlayStateChange(class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/) /* 06000062 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PlayStateChange(class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler/*02000039*/) /* 06000063 */
  } // end of event AxWindowsMediaPlayer::PlayStateChange
  .event /*14000021*/ AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/ AudioLanguageChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_AudioLanguageChange(class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/) /* 06000065 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_AudioLanguageChange(class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler/*0200003B*/) /* 06000064 */
  } // end of event AxWindowsMediaPlayer::AudioLanguageChange
  .event /*14000022*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ StatusChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_StatusChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000067 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_StatusChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000066 */
  } // end of event AxWindowsMediaPlayer::StatusChange
  .event /*14000023*/ AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/ ScriptCommand
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_ScriptCommand(class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/) /* 06000068 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_ScriptCommand(class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler/*0200003D*/) /* 06000069 */
  } // end of event AxWindowsMediaPlayer::ScriptCommand
  .event /*14000024*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ NewStream
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_NewStream(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 0600006B */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_NewStream(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 0600006A */
  } // end of event AxWindowsMediaPlayer::NewStream
  .event /*14000025*/ AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/ Disconnect
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_Disconnect(class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/) /* 0600006D */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_Disconnect(class AxWMPLib._WMPOCXEvents_DisconnectEventHandler/*0200003F*/) /* 0600006C */
  } // end of event AxWindowsMediaPlayer::Disconnect
  .event /*14000026*/ AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/ Buffering
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_Buffering(class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/) /* 0600006E */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_Buffering(class AxWMPLib._WMPOCXEvents_BufferingEventHandler/*02000041*/) /* 0600006F */
  } // end of event AxWindowsMediaPlayer::Buffering
  .event /*14000027*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ ErrorEvent
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_ErrorEvent(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000070 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_ErrorEvent(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000071 */
  } // end of event AxWindowsMediaPlayer::ErrorEvent
  .event /*14000028*/ AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/ Warning
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_Warning(class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/) /* 06000073 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_Warning(class AxWMPLib._WMPOCXEvents_WarningEventHandler/*02000043*/) /* 06000072 */
  } // end of event AxWindowsMediaPlayer::Warning
  .event /*14000029*/ AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/ EndOfStream
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_EndOfStream(class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/) /* 06000074 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_EndOfStream(class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler/*02000045*/) /* 06000075 */
  } // end of event AxWindowsMediaPlayer::EndOfStream
  .event /*1400002A*/ AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/ PositionChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PositionChange(class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/) /* 06000076 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PositionChange(class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler/*02000047*/) /* 06000077 */
  } // end of event AxWindowsMediaPlayer::PositionChange
  .event /*1400002B*/ AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/ MarkerHit
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MarkerHit(class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/) /* 06000078 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MarkerHit(class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler/*02000049*/) /* 06000079 */
  } // end of event AxWindowsMediaPlayer::MarkerHit
  .event /*1400002C*/ AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/ DurationUnitChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_DurationUnitChange(class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/) /* 0600007B */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_DurationUnitChange(class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler/*0200004B*/) /* 0600007A */
  } // end of event AxWindowsMediaPlayer::DurationUnitChange
  .event /*1400002D*/ AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/ CdromMediaChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CdromMediaChange(class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/) /* 0600007D */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CdromMediaChange(class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler/*0200004D*/) /* 0600007C */
  } // end of event AxWindowsMediaPlayer::CdromMediaChange
  .event /*1400002E*/ AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/ PlaylistChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PlaylistChange(class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/) /* 0600007E */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PlaylistChange(class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler/*0200004F*/) /* 0600007F */
  } // end of event AxWindowsMediaPlayer::PlaylistChange
  .event /*1400002F*/ AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/ CurrentPlaylistChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CurrentPlaylistChange(class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/) /* 06000080 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CurrentPlaylistChange(class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler/*02000051*/) /* 06000081 */
  } // end of event AxWindowsMediaPlayer::CurrentPlaylistChange
  .event /*14000030*/ AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/ CurrentPlaylistItemAvailable
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CurrentPlaylistItemAvailable(class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/) /* 06000082 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CurrentPlaylistItemAvailable(class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler/*02000053*/) /* 06000083 */
  } // end of event AxWindowsMediaPlayer::CurrentPlaylistItemAvailable
  .event /*14000031*/ AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/ MediaChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MediaChange(class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/) /* 06000085 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MediaChange(class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler/*02000055*/) /* 06000084 */
  } // end of event AxWindowsMediaPlayer::MediaChange
  .event /*14000032*/ AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/ CurrentMediaItemAvailable
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CurrentMediaItemAvailable(class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/) /* 06000087 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CurrentMediaItemAvailable(class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler/*02000057*/) /* 06000086 */
  } // end of event AxWindowsMediaPlayer::CurrentMediaItemAvailable
  .event /*14000033*/ AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/ CurrentItemChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_CurrentItemChange(class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/) /* 06000088 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_CurrentItemChange(class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler/*02000059*/) /* 06000089 */
  } // end of event AxWindowsMediaPlayer::CurrentItemChange
  .event /*14000034*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ MediaCollectionChange
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MediaCollectionChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 0600008B */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MediaCollectionChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 0600008A */
  } // end of event AxWindowsMediaPlayer::MediaCollectionChange
  .event /*14000035*/ AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/ MediaCollectionAttributeStringAdded
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MediaCollectionAttributeStringAdded(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/) /* 0600008C */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MediaCollectionAttributeStringAdded(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler/*0200005B*/) /* 0600008D */
  } // end of event AxWindowsMediaPlayer::MediaCollectionAttributeStringAdded
  .event /*14000036*/ AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/ MediaCollectionAttributeStringRemoved
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MediaCollectionAttributeStringRemoved(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/) /* 0600008F */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MediaCollectionAttributeStringRemoved(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler/*0200005D*/) /* 0600008E */
  } // end of event AxWindowsMediaPlayer::MediaCollectionAttributeStringRemoved
  .event /*14000037*/ AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/ MediaCollectionAttributeStringChanged
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MediaCollectionAttributeStringChanged(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/) /* 06000091 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MediaCollectionAttributeStringChanged(class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler/*0200005F*/) /* 06000090 */
  } // end of event AxWindowsMediaPlayer::MediaCollectionAttributeStringChanged
  .event /*14000038*/ [mscorlib/*23000002*/]System.EventHandler/*01000015*/ PlaylistCollectionChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PlaylistCollectionChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000092 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PlaylistCollectionChange(class [mscorlib/*23000002*/]System.EventHandler/*01000015*/) /* 06000093 */
  } // end of event AxWindowsMediaPlayer::PlaylistCollectionChange
  .event /*14000039*/ AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/ PlaylistCollectionPlaylistAdded
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PlaylistCollectionPlaylistAdded(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/) /* 06000095 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PlaylistCollectionPlaylistAdded(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler/*02000061*/) /* 06000094 */
  } // end of event AxWindowsMediaPlayer::PlaylistCollectionPlaylistAdded
  .event /*1400003A*/ AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/ PlaylistCollectionPlaylistRemoved
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PlaylistCollectionPlaylistRemoved(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/) /* 06000097 */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PlaylistCollectionPlaylistRemoved(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler/*02000063*/) /* 06000096 */
  } // end of event AxWindowsMediaPlayer::PlaylistCollectionPlaylistRemoved
  .event /*1400003B*/ AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/ PlaylistCollectionPlaylistSetAsDeleted
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_PlaylistCollectionPlaylistSetAsDeleted(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/) /* 06000098 */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_PlaylistCollectionPlaylistSetAsDeleted(class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler/*02000065*/) /* 06000099 */
  } // end of event AxWindowsMediaPlayer::PlaylistCollectionPlaylistSetAsDeleted
  .event /*1400003C*/ AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/ ModeChange
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_ModeChange(class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/) /* 0600009A */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_ModeChange(class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler/*02000067*/) /* 0600009B */
  } // end of event AxWindowsMediaPlayer::ModeChange
  .event /*1400003D*/ AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/ MediaError
  {
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_MediaError(class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/) /* 0600009D */
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_MediaError(class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler/*02000069*/) /* 0600009C */
  } // end of event AxWindowsMediaPlayer::MediaError
  .event /*1400003E*/ AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/ OpenPlaylistSwitch
  {
    .addon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::add_OpenPlaylistSwitch(class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/) /* 0600009E */
    .removeon instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::remove_OpenPlaylistSwitch(class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler/*0200006B*/) /* 0600009F */
  } // end of event AxWindowsMediaPlayer::OpenPlaylistSwitch
  .property /*17000001*/ instance string URL()
  {
    .custom /*0C000001:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 01 00 00 00 00 00 ) 
    .custom /*0C000002:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_URL(string) /* 06000003 */
    .get instance string AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_URL() /* 06000002 */
  } // end of property AxWindowsMediaPlayer::URL
  .property /*17000002*/ instance valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPOpenState/*01000007*/
          openState()
  {
    .custom /*0C000008:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 02 00 00 00 00 00 ) 
    .custom /*0C000009:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .get instance valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPOpenState/*01000007*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_openState() /* 06000004 */
  } // end of property AxWindowsMediaPlayer::openState
  .property /*17000003*/ instance valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlayState/*01000008*/
          playState()
  {
    .custom /*0C00000A:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C00000B:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 0A 00 00 00 00 00 ) 
    .get instance valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlayState/*01000008*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_playState() /* 06000005 */
  } // end of property AxWindowsMediaPlayer::playState
  .property /*17000004*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPControls/*01000009*/
          Ctlcontrols()
  {
    .custom /*0C00000C:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .custom /*0C00000D:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C00000E:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 04 00 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPControls/*01000009*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_Ctlcontrols() /* 06000006 */
  } // end of property AxWindowsMediaPlayer::Ctlcontrols
  .property /*17000005*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSettings/*0100000A*/
          settings()
  {
    .custom /*0C00000F:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 05 00 00 00 00 00 ) 
    .custom /*0C000010:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000011:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSettings/*0100000A*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_settings() /* 06000007 */
  } // end of property AxWindowsMediaPlayer::settings
  .property /*17000006*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/
          currentMedia()
  {
    .custom /*0C000012:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 06 00 00 00 00 00 ) 
    .custom /*0C000013:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000014:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_currentMedia(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/) /* 06000009 */
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMedia/*0100000B*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_currentMedia() /* 06000008 */
  } // end of property AxWindowsMediaPlayer::currentMedia
  .property /*17000007*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMediaCollection/*0100000C*/
          mediaCollection()
  {
    .custom /*0C000015:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .custom /*0C000016:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000017:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 08 00 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPMediaCollection/*0100000C*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_mediaCollection() /* 0600000A */
  } // end of property AxWindowsMediaPlayer::mediaCollection
  .property /*17000008*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylistCollection/*0100000D*/
          playlistCollection()
  {
    .custom /*0C000018:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 09 00 00 00 00 00 ) 
    .custom /*0C000019:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C00001A:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylistCollection/*0100000D*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_playlistCollection() /* 0600000B */
  } // end of property AxWindowsMediaPlayer::playlistCollection
  .property /*17000009*/ instance string versionInfo()
  {
    .custom /*0C00001B:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 0B 00 00 00 00 00 ) 
    .custom /*0C00001C:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .get instance string AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_versionInfo() /* 0600000C */
  } // end of property AxWindowsMediaPlayer::versionInfo
  .property /*1700000A*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPNetwork/*0100000E*/
          network()
  {
    .custom /*0C00001D:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .custom /*0C00001E:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C00001F:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 07 00 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPNetwork/*0100000E*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_network() /* 0600000D */
  } // end of property AxWindowsMediaPlayer::network
  .property /*1700000B*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/
          currentPlaylist()
  {
    .custom /*0C000020:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 0D 00 00 00 00 00 ) 
    .custom /*0C000021:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000022:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_currentPlaylist() /* 0600000E */
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_currentPlaylist(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlaylist/*0100000F*/) /* 0600000F */
  } // end of property AxWindowsMediaPlayer::currentPlaylist
  .property /*1700000C*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromCollection/*01000010*/
          cdromCollection()
  {
    .custom /*0C000023:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 0E 00 00 00 00 00 ) 
    .custom /*0C000024:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000025:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromCollection/*01000010*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_cdromCollection() /* 06000010 */
  } // end of property AxWindowsMediaPlayer::cdromCollection
  .property /*1700000D*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPClosedCaption/*01000011*/
          closedCaption()
  {
    .custom /*0C000026:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 0F 00 00 00 00 00 ) 
    .custom /*0C000027:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000028:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPClosedCaption/*01000011*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_closedCaption() /* 06000011 */
  } // end of property AxWindowsMediaPlayer::closedCaption
  .property /*1700000E*/ instance bool isOnline()
  {
    .custom /*0C000029:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 10 00 00 00 00 00 ) 
    .custom /*0C00002A:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .get instance bool AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_isOnline() /* 06000012 */
  } // end of property AxWindowsMediaPlayer::isOnline
  .property /*1700000F*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPError/*01000012*/
          Error()
  {
    .custom /*0C00002B:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C00002C:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .custom /*0C00002D:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 11 00 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPError/*01000012*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_Error() /* 06000013 */
  } // end of property AxWindowsMediaPlayer::Error
  .property /*17000010*/ instance string status()
  {
    .custom /*0C00002E:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 12 00 00 00 00 00 ) 
    .custom /*0C00002F:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .get instance string AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_status() /* 06000014 */
  } // end of property AxWindowsMediaPlayer::status
  .property /*17000011*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPDVD/*01000013*/
          dvd()
  {
    .custom /*0C000030:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .custom /*0C000031:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 28 00 00 00 00 00 )                         // ..(.....
    .custom /*0C000032:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPDVD/*01000013*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_dvd() /* 06000015 */
  } // end of property AxWindowsMediaPlayer::dvd
  .property /*17000012*/ instance bool Ctlenabled()
  {
    .custom /*0C000033:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000034:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 13 00 00 00 00 00 ) 
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_Ctlenabled(bool) /* 06000017 */
    .get instance bool AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_Ctlenabled() /* 06000016 */
  } // end of property AxWindowsMediaPlayer::Ctlenabled
  .property /*17000013*/ instance bool fullScreen()
  {
    .custom /*0C000035:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 15 00 00 00 00 00 ) 
    .custom /*0C000036:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_fullScreen(bool) /* 06000019 */
    .get instance bool AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_fullScreen() /* 06000018 */
  } // end of property AxWindowsMediaPlayer::fullScreen
  .property /*17000014*/ instance bool enableContextMenu()
  {
    .custom /*0C000037:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000038:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 16 00 00 00 00 00 ) 
    .get instance bool AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_enableContextMenu() /* 0600001A */
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_enableContextMenu(bool) /* 0600001B */
  } // end of property AxWindowsMediaPlayer::enableContextMenu
  .property /*17000015*/ instance string uiMode()
  {
    .custom /*0C000039:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C00003A:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 17 00 00 00 00 00 ) 
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_uiMode(string) /* 0600001D */
    .get instance string AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_uiMode() /* 0600001C */
  } // end of property AxWindowsMediaPlayer::uiMode
  .property /*17000016*/ instance bool stretchToFit()
  {
    .custom /*0C00003B:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 18 00 00 00 00 00 ) 
    .custom /*0C00003C:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_stretchToFit(bool) /* 0600001F */
    .get instance bool AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_stretchToFit() /* 0600001E */
  } // end of property AxWindowsMediaPlayer::stretchToFit
  .property /*17000017*/ instance bool windowlessVideo()
  {
    .custom /*0C00003D:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 19 00 00 00 00 00 ) 
    .custom /*0C00003E:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .set instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::set_windowlessVideo(bool) /* 06000021 */
    .get instance bool AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_windowlessVideo() /* 06000020 */
  } // end of property AxWindowsMediaPlayer::windowlessVideo
  .property /*17000018*/ instance bool isRemote()
  {
    .custom /*0C00003F:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000040:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 1A 00 00 00 00 00 ) 
    .get instance bool AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_isRemote() /* 06000022 */
  } // end of property AxWindowsMediaPlayer::isRemote
  .property /*17000019*/ instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayerApplication/*01000014*/
          playerApplication()
  {
    .custom /*0C000041:0A000039*/ instance void [System/*23000004*/]System.ComponentModel.BrowsableAttribute/*01000033*/::.ctor(bool) /* 0A000039 */ = ( 01 00 00 00 00 ) 
    .custom /*0C000042:0A000037*/ instance void [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibilityAttribute/*01000030*/::.ctor(valuetype [System/*23000004*/]System.ComponentModel.DesignerSerializationVisibility/*01000031*/) /* 0A000037 */ = ( 01 00 00 00 00 00 00 00 ) 
    .custom /*0C000043:0A000038*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.DispIdAttribute/*01000032*/::.ctor(int32) /* 0A000038 */ = ( 01 00 1B 00 00 00 00 00 ) 
    .get instance class [Interop.WMPLib/*23000003*/]WMPLib.IWMPPlayerApplication/*01000014*/ AxWMPLib.AxWindowsMediaPlayer/*02000002*/::get_playerApplication() /* 06000023 */
  } // end of property AxWindowsMediaPlayer::playerApplication
} // end of class AxWMPLib.AxWindowsMediaPlayer

.class /*02000003*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DomainChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060000E6*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DomainChangeEventHandler::.ctor

  .method /*060000E7*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DomainChangeEvent/*02000004*/ e) runtime managed
  // SIG: 20 02 01 1C 12 10
  {
  } // end of method _WMPOCXEvents_DomainChangeEventHandler::Invoke

  .method /*060000E8*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DomainChangeEvent/*02000004*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 10 12 61 1C
  {
  } // end of method _WMPOCXEvents_DomainChangeEventHandler::BeginInvoke

  .method /*060000E9*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DomainChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DomainChangeEventHandler

.class /*02000004*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DomainChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000042*/ public string strDomain
  .method /*060000EA*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string strDomain) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x37f2
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000042       */ stfld      string AxWMPLib._WMPOCXEvents_DomainChangeEvent/*02000004*/::strDomain /* 04000042 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DomainChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DomainChangeEvent

.class /*02000005*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_ClickEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060000EB*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_ClickEventHandler::.ctor

  .method /*060000EC*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/ e) runtime managed
  // SIG: 20 02 01 1C 12 18
  {
  } // end of method _WMPOCXEvents_ClickEventHandler::Invoke

  .method /*060000ED*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 18 12 61 1C
  {
  } // end of method _WMPOCXEvents_ClickEventHandler::BeginInvoke

  .method /*060000EE*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_ClickEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_ClickEventHandler

.class /*02000006*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_ClickEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000043*/ public int16 nButton
  .field /*04000044*/ public int16 nShiftState
  .field /*04000045*/ public int32 fX
  .field /*04000046*/ public int32 fY
  .method /*060000EF*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int16 nButton,
                               int16 nShiftState,
                               int32 fX,
                               int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x3801
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000043       */ stfld      int16 AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/::nButton /* 04000043 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000044       */ stfld      int16 AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/::nShiftState /* 04000044 */
    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 05   |                  */ ldarg.3
    IL_0016:  /* 7D   | (04)000045       */ stfld      int32 AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/::fX /* 04000045 */
    IL_001b:  /* 02   |                  */ ldarg.0
    IL_001c:  /* 0E   | 04               */ ldarg.s    fY
    IL_001e:  /* 7D   | (04)000046       */ stfld      int32 AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/::fY /* 04000046 */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_ClickEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_ClickEvent

.class /*02000007*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DoubleClickEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060000F0*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DoubleClickEventHandler::.ctor

  .method /*060000F1*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/ e) runtime managed
  // SIG: 20 02 01 1C 12 20
  {
  } // end of method _WMPOCXEvents_DoubleClickEventHandler::Invoke

  .method /*060000F2*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 20 12 61 1C
  {
  } // end of method _WMPOCXEvents_DoubleClickEventHandler::BeginInvoke

  .method /*060000F3*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DoubleClickEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DoubleClickEventHandler

.class /*02000008*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DoubleClickEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000047*/ public int16 nButton
  .field /*04000048*/ public int16 nShiftState
  .field /*04000049*/ public int32 fX
  .field /*0400004A*/ public int32 fY
  .method /*060000F4*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int16 nButton,
                               int16 nShiftState,
                               int32 fX,
                               int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x3826
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000047       */ stfld      int16 AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/::nButton /* 04000047 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000048       */ stfld      int16 AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/::nShiftState /* 04000048 */
    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 05   |                  */ ldarg.3
    IL_0016:  /* 7D   | (04)000049       */ stfld      int32 AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/::fX /* 04000049 */
    IL_001b:  /* 02   |                  */ ldarg.0
    IL_001c:  /* 0E   | 04               */ ldarg.s    fY
    IL_001e:  /* 7D   | (04)00004A       */ stfld      int32 AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/::fY /* 0400004A */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DoubleClickEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DoubleClickEvent

.class /*02000009*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_KeyDownEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060000F5*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_KeyDownEventHandler::.ctor

  .method /*060000F6*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/ e) runtime managed
  // SIG: 20 02 01 1C 12 28
  {
  } // end of method _WMPOCXEvents_KeyDownEventHandler::Invoke

  .method /*060000F7*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 28 12 61 1C
  {
  } // end of method _WMPOCXEvents_KeyDownEventHandler::BeginInvoke

  .method /*060000F8*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_KeyDownEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_KeyDownEventHandler

.class /*0200000A*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_KeyDownEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400004B*/ public int16 nKeyCode
  .field /*0400004C*/ public int16 nShiftState
  .method /*060000F9*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int16 nKeyCode,
                               int16 nShiftState) cil managed
  // SIG: 20 02 01 06 06
  {
    // Method begins at RVA 0x384b
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00004B       */ stfld      int16 AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/::nKeyCode /* 0400004B */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)00004C       */ stfld      int16 AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/::nShiftState /* 0400004C */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_KeyDownEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_KeyDownEvent

.class /*0200000B*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_KeyPressEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060000FA*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_KeyPressEventHandler::.ctor

  .method /*060000FB*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_KeyPressEvent/*0200000C*/ e) runtime managed
  // SIG: 20 02 01 1C 12 30
  {
  } // end of method _WMPOCXEvents_KeyPressEventHandler::Invoke

  .method /*060000FC*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_KeyPressEvent/*0200000C*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 30 12 61 1C
  {
  } // end of method _WMPOCXEvents_KeyPressEventHandler::BeginInvoke

  .method /*060000FD*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_KeyPressEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_KeyPressEventHandler

.class /*0200000C*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_KeyPressEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400004D*/ public int16 nKeyAscii
  .method /*060000FE*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int16 nKeyAscii) cil managed
  // SIG: 20 01 01 06
  {
    // Method begins at RVA 0x3861
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00004D       */ stfld      int16 AxWMPLib._WMPOCXEvents_KeyPressEvent/*0200000C*/::nKeyAscii /* 0400004D */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_KeyPressEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_KeyPressEvent

.class /*0200000D*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_KeyUpEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060000FF*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_KeyUpEventHandler::.ctor

  .method /*06000100*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/ e) runtime managed
  // SIG: 20 02 01 1C 12 38
  {
  } // end of method _WMPOCXEvents_KeyUpEventHandler::Invoke

  .method /*06000101*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 38 12 61 1C
  {
  } // end of method _WMPOCXEvents_KeyUpEventHandler::BeginInvoke

  .method /*06000102*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_KeyUpEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_KeyUpEventHandler

.class /*0200000E*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_KeyUpEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400004E*/ public int16 nKeyCode
  .field /*0400004F*/ public int16 nShiftState
  .method /*06000103*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int16 nKeyCode,
                               int16 nShiftState) cil managed
  // SIG: 20 02 01 06 06
  {
    // Method begins at RVA 0x3870
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00004E       */ stfld      int16 AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/::nKeyCode /* 0400004E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)00004F       */ stfld      int16 AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/::nShiftState /* 0400004F */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_KeyUpEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_KeyUpEvent

.class /*0200000F*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MouseDownEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000104*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MouseDownEventHandler::.ctor

  .method /*06000105*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/ e) runtime managed
  // SIG: 20 02 01 1C 12 40
  {
  } // end of method _WMPOCXEvents_MouseDownEventHandler::Invoke

  .method /*06000106*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 40 12 61 1C
  {
  } // end of method _WMPOCXEvents_MouseDownEventHandler::BeginInvoke

  .method /*06000107*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MouseDownEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MouseDownEventHandler

.class /*02000010*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MouseDownEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000050*/ public int16 nButton
  .field /*04000051*/ public int16 nShiftState
  .field /*04000052*/ public int32 fX
  .field /*04000053*/ public int32 fY
  .method /*06000108*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int16 nButton,
                               int16 nShiftState,
                               int32 fX,
                               int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x3886
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000050       */ stfld      int16 AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/::nButton /* 04000050 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000051       */ stfld      int16 AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/::nShiftState /* 04000051 */
    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 05   |                  */ ldarg.3
    IL_0016:  /* 7D   | (04)000052       */ stfld      int32 AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/::fX /* 04000052 */
    IL_001b:  /* 02   |                  */ ldarg.0
    IL_001c:  /* 0E   | 04               */ ldarg.s    fY
    IL_001e:  /* 7D   | (04)000053       */ stfld      int32 AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/::fY /* 04000053 */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MouseDownEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MouseDownEvent

.class /*02000011*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MouseMoveEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000109*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MouseMoveEventHandler::.ctor

  .method /*0600010A*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/ e) runtime managed
  // SIG: 20 02 01 1C 12 48
  {
  } // end of method _WMPOCXEvents_MouseMoveEventHandler::Invoke

  .method /*0600010B*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 48 12 61 1C
  {
  } // end of method _WMPOCXEvents_MouseMoveEventHandler::BeginInvoke

  .method /*0600010C*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MouseMoveEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MouseMoveEventHandler

.class /*02000012*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MouseMoveEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000054*/ public int16 nButton
  .field /*04000055*/ public int16 nShiftState
  .field /*04000056*/ public int32 fX
  .field /*04000057*/ public int32 fY
  .method /*0600010D*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int16 nButton,
                               int16 nShiftState,
                               int32 fX,
                               int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x38ab
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000054       */ stfld      int16 AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/::nButton /* 04000054 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000055       */ stfld      int16 AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/::nShiftState /* 04000055 */
    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 05   |                  */ ldarg.3
    IL_0016:  /* 7D   | (04)000056       */ stfld      int32 AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/::fX /* 04000056 */
    IL_001b:  /* 02   |                  */ ldarg.0
    IL_001c:  /* 0E   | 04               */ ldarg.s    fY
    IL_001e:  /* 7D   | (04)000057       */ stfld      int32 AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/::fY /* 04000057 */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MouseMoveEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MouseMoveEvent

.class /*02000013*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MouseUpEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600010E*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MouseUpEventHandler::.ctor

  .method /*0600010F*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/ e) runtime managed
  // SIG: 20 02 01 1C 12 50
  {
  } // end of method _WMPOCXEvents_MouseUpEventHandler::Invoke

  .method /*06000110*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 50 12 61 1C
  {
  } // end of method _WMPOCXEvents_MouseUpEventHandler::BeginInvoke

  .method /*06000111*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MouseUpEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MouseUpEventHandler

.class /*02000014*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MouseUpEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000058*/ public int16 nButton
  .field /*04000059*/ public int16 nShiftState
  .field /*0400005A*/ public int32 fX
  .field /*0400005B*/ public int32 fY
  .method /*06000112*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int16 nButton,
                               int16 nShiftState,
                               int32 fX,
                               int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x38d0
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000058       */ stfld      int16 AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/::nButton /* 04000058 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000059       */ stfld      int16 AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/::nShiftState /* 04000059 */
    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 05   |                  */ ldarg.3
    IL_0016:  /* 7D   | (04)00005A       */ stfld      int32 AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/::fX /* 0400005A */
    IL_001b:  /* 02   |                  */ ldarg.0
    IL_001c:  /* 0E   | 04               */ ldarg.s    fY
    IL_001e:  /* 7D   | (04)00005B       */ stfld      int32 AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/::fY /* 0400005B */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MouseUpEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MouseUpEvent

.class /*02000015*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000113*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DeviceConnectEventHandler::.ctor

  .method /*06000114*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DeviceConnectEvent/*02000016*/ e) runtime managed
  // SIG: 20 02 01 1C 12 58
  {
  } // end of method _WMPOCXEvents_DeviceConnectEventHandler::Invoke

  .method /*06000115*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DeviceConnectEvent/*02000016*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 58 12 61 1C
  {
  } // end of method _WMPOCXEvents_DeviceConnectEventHandler::BeginInvoke

  .method /*06000116*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DeviceConnectEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DeviceConnectEventHandler

.class /*02000016*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DeviceConnectEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400005C*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice
  .method /*06000117*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice) cil managed
  // SIG: 20 01 01 12 65
  {
    // Method begins at RVA 0x38f5
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00005C       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ AxWMPLib._WMPOCXEvents_DeviceConnectEvent/*02000016*/::pDevice /* 0400005C */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DeviceConnectEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DeviceConnectEvent

.class /*02000017*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000118*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DeviceDisconnectEventHandler::.ctor

  .method /*06000119*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent/*02000018*/ e) runtime managed
  // SIG: 20 02 01 1C 12 60
  {
  } // end of method _WMPOCXEvents_DeviceDisconnectEventHandler::Invoke

  .method /*0600011A*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent/*02000018*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 60 12 61 1C
  {
  } // end of method _WMPOCXEvents_DeviceDisconnectEventHandler::BeginInvoke

  .method /*0600011B*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DeviceDisconnectEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DeviceDisconnectEventHandler

.class /*02000018*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400005D*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice
  .method /*0600011C*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice) cil managed
  // SIG: 20 01 01 12 65
  {
    // Method begins at RVA 0x3904
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00005D       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent/*02000018*/::pDevice /* 0400005D */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DeviceDisconnectEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent

.class /*02000019*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600011D*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DeviceStatusChangeEventHandler::.ctor

  .method /*0600011E*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/ e) runtime managed
  // SIG: 20 02 01 1C 12 68
  {
  } // end of method _WMPOCXEvents_DeviceStatusChangeEventHandler::Invoke

  .method /*0600011F*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 68 12 61 1C
  {
  } // end of method _WMPOCXEvents_DeviceStatusChangeEventHandler::BeginInvoke

  .method /*06000120*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DeviceStatusChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEventHandler

.class /*0200001A*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400005E*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice
  .field /*0400005F*/ public valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPDeviceStatus/*0100001A*/ newStatus
  .method /*06000121*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice,
                               valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPDeviceStatus/*0100001A*/ newStatus) cil managed
  // SIG: 20 02 01 12 65 11 69
  {
    // Method begins at RVA 0x3913
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00005E       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/::pDevice /* 0400005E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)00005F       */ stfld      valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPDeviceStatus/*0100001A*/ AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/::newStatus /* 0400005F */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DeviceStatusChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent

.class /*0200001B*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000122*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DeviceSyncStateChangeEventHandler::.ctor

  .method /*06000123*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/ e) runtime managed
  // SIG: 20 02 01 1C 12 70
  {
  } // end of method _WMPOCXEvents_DeviceSyncStateChangeEventHandler::Invoke

  .method /*06000124*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 70 12 61 1C
  {
  } // end of method _WMPOCXEvents_DeviceSyncStateChangeEventHandler::BeginInvoke

  .method /*06000125*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DeviceSyncStateChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEventHandler

.class /*0200001C*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000060*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice
  .field /*04000061*/ public valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPSyncState/*0100001B*/ newState
  .method /*06000126*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice,
                               valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPSyncState/*0100001B*/ newState) cil managed
  // SIG: 20 02 01 12 65 11 6D
  {
    // Method begins at RVA 0x3929
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000060       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/::pDevice /* 04000060 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000061       */ stfld      valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPSyncState/*0100001B*/ AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/::newState /* 04000061 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DeviceSyncStateChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent

.class /*0200001D*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000127*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DeviceSyncErrorEventHandler::.ctor

  .method /*06000128*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/ e) runtime managed
  // SIG: 20 02 01 1C 12 78
  {
  } // end of method _WMPOCXEvents_DeviceSyncErrorEventHandler::Invoke

  .method /*06000129*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 78 12 61 1C
  {
  } // end of method _WMPOCXEvents_DeviceSyncErrorEventHandler::BeginInvoke

  .method /*0600012A*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DeviceSyncErrorEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEventHandler

.class /*0200001E*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000062*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice
  .field /*04000063*/ public object pMedia
  .method /*0600012B*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice,
                               object pMedia) cil managed
  // SIG: 20 02 01 12 65 1C
  {
    // Method begins at RVA 0x393f
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000062       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/::pDevice /* 04000062 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000063       */ stfld      object AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/::pMedia /* 04000063 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DeviceSyncErrorEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent

.class /*0200001F*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600012C*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CreatePartnershipCompleteEventHandler::.ctor

  .method /*0600012D*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 80
  {
  } // end of method _WMPOCXEvents_CreatePartnershipCompleteEventHandler::Invoke

  .method /*0600012E*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 80 12 61 1C
  {
  } // end of method _WMPOCXEvents_CreatePartnershipCompleteEventHandler::BeginInvoke

  .method /*0600012F*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CreatePartnershipCompleteEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEventHandler

.class /*02000020*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000064*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice
  .field /*04000065*/ public int32 hrResult
  .method /*06000130*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice,
                               int32 hrResult) cil managed
  // SIG: 20 02 01 12 65 08
  {
    // Method begins at RVA 0x3955
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000064       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/::pDevice /* 04000064 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000065       */ stfld      int32 AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/::hrResult /* 04000065 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CreatePartnershipCompleteEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent

.class /*02000021*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000131*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CdromRipStateChangeEventHandler::.ctor

  .method /*06000132*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 88
  {
  } // end of method _WMPOCXEvents_CdromRipStateChangeEventHandler::Invoke

  .method /*06000133*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 88 12 61 1C
  {
  } // end of method _WMPOCXEvents_CdromRipStateChangeEventHandler::BeginInvoke

  .method /*06000134*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CdromRipStateChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEventHandler

.class /*02000022*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000066*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/ pCdromRip
  .field /*04000067*/ public valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPRipState/*0100001D*/ wmprs
  .method /*06000135*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/ pCdromRip,
                               valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPRipState/*0100001D*/ wmprs) cil managed
  // SIG: 20 02 01 12 71 11 75
  {
    // Method begins at RVA 0x396b
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000066       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/ AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/::pCdromRip /* 04000066 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000067       */ stfld      valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPRipState/*0100001D*/ AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/::wmprs /* 04000067 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CdromRipStateChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent

.class /*02000023*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000136*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CdromRipMediaErrorEventHandler::.ctor

  .method /*06000137*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 90
  {
  } // end of method _WMPOCXEvents_CdromRipMediaErrorEventHandler::Invoke

  .method /*06000138*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 90 12 61 1C
  {
  } // end of method _WMPOCXEvents_CdromRipMediaErrorEventHandler::BeginInvoke

  .method /*06000139*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CdromRipMediaErrorEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEventHandler

.class /*02000024*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000068*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/ pCdromRip
  .field /*04000069*/ public object pMedia
  .method /*0600013A*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/ pCdromRip,
                               object pMedia) cil managed
  // SIG: 20 02 01 12 71 1C
  {
    // Method begins at RVA 0x3981
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000068       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/ AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/::pCdromRip /* 04000068 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000069       */ stfld      object AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/::pMedia /* 04000069 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CdromRipMediaErrorEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent

.class /*02000025*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600013B*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CdromBurnStateChangeEventHandler::.ctor

  .method /*0600013C*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 98
  {
  } // end of method _WMPOCXEvents_CdromBurnStateChangeEventHandler::Invoke

  .method /*0600013D*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 98 12 61 1C
  {
  } // end of method _WMPOCXEvents_CdromBurnStateChangeEventHandler::BeginInvoke

  .method /*0600013E*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CdromBurnStateChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEventHandler

.class /*02000026*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400006A*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn
  .field /*0400006B*/ public valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPBurnState/*0100001F*/ wmpbs
  .method /*0600013F*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn,
                               valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPBurnState/*0100001F*/ wmpbs) cil managed
  // SIG: 20 02 01 12 79 11 7D
  {
    // Method begins at RVA 0x3997
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00006A       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/::pCdromBurn /* 0400006A */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)00006B       */ stfld      valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPBurnState/*0100001F*/ AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/::wmpbs /* 0400006B */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CdromBurnStateChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent

.class /*02000027*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000140*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CdromBurnMediaErrorEventHandler::.ctor

  .method /*06000141*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 A0
  {
  } // end of method _WMPOCXEvents_CdromBurnMediaErrorEventHandler::Invoke

  .method /*06000142*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 A0 12 61 1C
  {
  } // end of method _WMPOCXEvents_CdromBurnMediaErrorEventHandler::BeginInvoke

  .method /*06000143*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CdromBurnMediaErrorEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEventHandler

.class /*02000028*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400006C*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn
  .field /*0400006D*/ public object pMedia
  .method /*06000144*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn,
                               object pMedia) cil managed
  // SIG: 20 02 01 12 79 1C
  {
    // Method begins at RVA 0x39ad
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00006C       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/::pCdromBurn /* 0400006C */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)00006D       */ stfld      object AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/::pMedia /* 0400006D */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CdromBurnMediaErrorEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent

.class /*02000029*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000145*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CdromBurnErrorEventHandler::.ctor

  .method /*06000146*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 A8
  {
  } // end of method _WMPOCXEvents_CdromBurnErrorEventHandler::Invoke

  .method /*06000147*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 A8 12 61 1C
  {
  } // end of method _WMPOCXEvents_CdromBurnErrorEventHandler::BeginInvoke

  .method /*06000148*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CdromBurnErrorEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CdromBurnErrorEventHandler

.class /*0200002A*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400006E*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn
  .field /*0400006F*/ public int32 hrError
  .method /*06000149*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn,
                               int32 hrError) cil managed
  // SIG: 20 02 01 12 79 08
  {
    // Method begins at RVA 0x39c3
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00006E       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/::pCdromBurn /* 0400006E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)00006F       */ stfld      int32 AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/::hrError /* 0400006F */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CdromBurnErrorEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent

.class /*0200002B*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600014A*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_LibraryConnectEventHandler::.ctor

  .method /*0600014B*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_LibraryConnectEvent/*0200002C*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 B0
  {
  } // end of method _WMPOCXEvents_LibraryConnectEventHandler::Invoke

  .method /*0600014C*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_LibraryConnectEvent/*0200002C*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 B0 12 61 1C
  {
  } // end of method _WMPOCXEvents_LibraryConnectEventHandler::BeginInvoke

  .method /*0600014D*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_LibraryConnectEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_LibraryConnectEventHandler

.class /*0200002C*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_LibraryConnectEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000070*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/ pLibrary
  .method /*0600014E*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/ pLibrary) cil managed
  // SIG: 20 01 01 12 80 81
  {
    // Method begins at RVA 0x39d9
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000070       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/ AxWMPLib._WMPOCXEvents_LibraryConnectEvent/*0200002C*/::pLibrary /* 04000070 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_LibraryConnectEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_LibraryConnectEvent

.class /*0200002D*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600014F*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_LibraryDisconnectEventHandler::.ctor

  .method /*06000150*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent/*0200002E*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 B8
  {
  } // end of method _WMPOCXEvents_LibraryDisconnectEventHandler::Invoke

  .method /*06000151*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent/*0200002E*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 B8 12 61 1C
  {
  } // end of method _WMPOCXEvents_LibraryDisconnectEventHandler::BeginInvoke

  .method /*06000152*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_LibraryDisconnectEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_LibraryDisconnectEventHandler

.class /*0200002E*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000071*/ public class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/ pLibrary
  .method /*06000153*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/ pLibrary) cil managed
  // SIG: 20 01 01 12 80 81
  {
    // Method begins at RVA 0x39e8
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000071       */ stfld      class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/ AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent/*0200002E*/::pLibrary /* 04000071 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_LibraryDisconnectEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent

.class /*0200002F*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000154*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_FolderScanStateChangeEventHandler::.ctor

  .method /*06000155*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent/*02000030*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 C0
  {
  } // end of method _WMPOCXEvents_FolderScanStateChangeEventHandler::Invoke

  .method /*06000156*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent/*02000030*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 C0 12 61 1C
  {
  } // end of method _WMPOCXEvents_FolderScanStateChangeEventHandler::BeginInvoke

  .method /*06000157*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_FolderScanStateChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEventHandler

.class /*02000030*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000072*/ public valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPFolderScanState/*01000021*/ wmpfss
  .method /*06000158*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPFolderScanState/*01000021*/ wmpfss) cil managed
  // SIG: 20 01 01 11 80 85
  {
    // Method begins at RVA 0x39f7
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000072       */ stfld      valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPFolderScanState/*01000021*/ AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent/*02000030*/::wmpfss /* 04000072 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_FolderScanStateChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent

.class /*02000031*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000159*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_StringCollectionChangeEventHandler::.ctor

  .method /*0600015A*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 C8
  {
  } // end of method _WMPOCXEvents_StringCollectionChangeEventHandler::Invoke

  .method /*0600015B*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 C8 12 61 1C
  {
  } // end of method _WMPOCXEvents_StringCollectionChangeEventHandler::BeginInvoke

  .method /*0600015C*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_StringCollectionChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_StringCollectionChangeEventHandler

.class /*02000032*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000073*/ public object pdispStringCollection
  .field /*04000074*/ public valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPStringCollectionChangeEventType/*01000022*/ change
  .field /*04000075*/ public int32 lCollectionIndex
  .method /*0600015D*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object pdispStringCollection,
                               valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPStringCollectionChangeEventType/*01000022*/ change,
                               int32 lCollectionIndex) cil managed
  // SIG: 20 03 01 1C 11 80 89 08
  {
    // Method begins at RVA 0x3a06
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000073       */ stfld      object AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/::pdispStringCollection /* 04000073 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000074       */ stfld      valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPStringCollectionChangeEventType/*01000022*/ AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/::change /* 04000074 */
    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 05   |                  */ ldarg.3
    IL_0016:  /* 7D   | (04)000075       */ stfld      int32 AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/::lCollectionIndex /* 04000075 */
    IL_001b:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_StringCollectionChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent

.class /*02000033*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600015E*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MediaCollectionMediaAddedEventHandler::.ctor

  .method /*0600015F*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent/*02000034*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 D0
  {
  } // end of method _WMPOCXEvents_MediaCollectionMediaAddedEventHandler::Invoke

  .method /*06000160*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent/*02000034*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 D0 12 61 1C
  {
  } // end of method _WMPOCXEvents_MediaCollectionMediaAddedEventHandler::BeginInvoke

  .method /*06000161*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MediaCollectionMediaAddedEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEventHandler

.class /*02000034*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000076*/ public object pdispMedia
  .method /*06000162*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object pdispMedia) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x3a23
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000076       */ stfld      object AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent/*02000034*/::pdispMedia /* 04000076 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MediaCollectionMediaAddedEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent

.class /*02000035*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000163*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MediaCollectionMediaRemovedEventHandler::.ctor

  .method /*06000164*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent/*02000036*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 D8
  {
  } // end of method _WMPOCXEvents_MediaCollectionMediaRemovedEventHandler::Invoke

  .method /*06000165*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent/*02000036*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 D8 12 61 1C
  {
  } // end of method _WMPOCXEvents_MediaCollectionMediaRemovedEventHandler::BeginInvoke

  .method /*06000166*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MediaCollectionMediaRemovedEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEventHandler

.class /*02000036*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000077*/ public object pdispMedia
  .method /*06000167*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object pdispMedia) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x3a32
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000077       */ stfld      object AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent/*02000036*/::pdispMedia /* 04000077 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MediaCollectionMediaRemovedEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent

.class /*02000037*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000168*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_OpenStateChangeEventHandler::.ctor

  .method /*06000169*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_OpenStateChangeEvent/*02000038*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 E0
  {
  } // end of method _WMPOCXEvents_OpenStateChangeEventHandler::Invoke

  .method /*0600016A*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_OpenStateChangeEvent/*02000038*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 E0 12 61 1C
  {
  } // end of method _WMPOCXEvents_OpenStateChangeEventHandler::BeginInvoke

  .method /*0600016B*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_OpenStateChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_OpenStateChangeEventHandler

.class /*02000038*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_OpenStateChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000078*/ public int32 newState
  .method /*0600016C*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 newState) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x3a41
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000078       */ stfld      int32 AxWMPLib._WMPOCXEvents_OpenStateChangeEvent/*02000038*/::newState /* 04000078 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_OpenStateChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_OpenStateChangeEvent

.class /*02000039*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600016D*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_PlayStateChangeEventHandler::.ctor

  .method /*0600016E*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_PlayStateChangeEvent/*0200003A*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 E8
  {
  } // end of method _WMPOCXEvents_PlayStateChangeEventHandler::Invoke

  .method /*0600016F*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_PlayStateChangeEvent/*0200003A*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 E8 12 61 1C
  {
  } // end of method _WMPOCXEvents_PlayStateChangeEventHandler::BeginInvoke

  .method /*06000170*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_PlayStateChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_PlayStateChangeEventHandler

.class /*0200003A*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_PlayStateChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000079*/ public int32 newState
  .method /*06000171*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 newState) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x3a50
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000079       */ stfld      int32 AxWMPLib._WMPOCXEvents_PlayStateChangeEvent/*0200003A*/::newState /* 04000079 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_PlayStateChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_PlayStateChangeEvent

.class /*0200003B*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000172*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_AudioLanguageChangeEventHandler::.ctor

  .method /*06000173*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent/*0200003C*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 F0
  {
  } // end of method _WMPOCXEvents_AudioLanguageChangeEventHandler::Invoke

  .method /*06000174*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent/*0200003C*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 F0 12 61 1C
  {
  } // end of method _WMPOCXEvents_AudioLanguageChangeEventHandler::BeginInvoke

  .method /*06000175*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_AudioLanguageChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEventHandler

.class /*0200003C*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400007A*/ public int32 langID
  .method /*06000176*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 langID) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x3a5f
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00007A       */ stfld      int32 AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent/*0200003C*/::langID /* 0400007A */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_AudioLanguageChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent

.class /*0200003D*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000177*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_ScriptCommandEventHandler::.ctor

  .method /*06000178*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/ e) runtime managed
  // SIG: 20 02 01 1C 12 80 F8
  {
  } // end of method _WMPOCXEvents_ScriptCommandEventHandler::Invoke

  .method /*06000179*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 80 F8 12 61 1C
  {
  } // end of method _WMPOCXEvents_ScriptCommandEventHandler::BeginInvoke

  .method /*0600017A*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_ScriptCommandEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_ScriptCommandEventHandler

.class /*0200003E*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_ScriptCommandEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400007B*/ public string scType
  .field /*0400007C*/ public string param
  .method /*0600017B*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string scType,
                               string param) cil managed
  // SIG: 20 02 01 0E 0E
  {
    // Method begins at RVA 0x3a6e
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00007B       */ stfld      string AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/::scType /* 0400007B */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)00007C       */ stfld      string AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/::param /* 0400007C */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_ScriptCommandEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_ScriptCommandEvent

.class /*0200003F*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DisconnectEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600017C*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DisconnectEventHandler::.ctor

  .method /*0600017D*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DisconnectEvent/*02000040*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 00
  {
  } // end of method _WMPOCXEvents_DisconnectEventHandler::Invoke

  .method /*0600017E*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DisconnectEvent/*02000040*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 00 12 61 1C
  {
  } // end of method _WMPOCXEvents_DisconnectEventHandler::BeginInvoke

  .method /*0600017F*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DisconnectEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DisconnectEventHandler

.class /*02000040*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DisconnectEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400007D*/ public int32 result
  .method /*06000180*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 result) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x3a84
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00007D       */ stfld      int32 AxWMPLib._WMPOCXEvents_DisconnectEvent/*02000040*/::result /* 0400007D */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DisconnectEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DisconnectEvent

.class /*02000041*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_BufferingEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000181*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_BufferingEventHandler::.ctor

  .method /*06000182*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_BufferingEvent/*02000042*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 08
  {
  } // end of method _WMPOCXEvents_BufferingEventHandler::Invoke

  .method /*06000183*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_BufferingEvent/*02000042*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 08 12 61 1C
  {
  } // end of method _WMPOCXEvents_BufferingEventHandler::BeginInvoke

  .method /*06000184*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_BufferingEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_BufferingEventHandler

.class /*02000042*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_BufferingEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400007E*/ public bool start
  .method /*06000185*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(bool start) cil managed
  // SIG: 20 01 01 02
  {
    // Method begins at RVA 0x3a93
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00007E       */ stfld      bool AxWMPLib._WMPOCXEvents_BufferingEvent/*02000042*/::start /* 0400007E */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_BufferingEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_BufferingEvent

.class /*02000043*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_WarningEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000186*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_WarningEventHandler::.ctor

  .method /*06000187*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 10
  {
  } // end of method _WMPOCXEvents_WarningEventHandler::Invoke

  .method /*06000188*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 10 12 61 1C
  {
  } // end of method _WMPOCXEvents_WarningEventHandler::BeginInvoke

  .method /*06000189*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_WarningEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_WarningEventHandler

.class /*02000044*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_WarningEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400007F*/ public int32 warningType
  .field /*04000080*/ public int32 param
  .field /*04000081*/ public string description
  .method /*0600018A*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 warningType,
                               int32 param,
                               string description) cil managed
  // SIG: 20 03 01 08 08 0E
  {
    // Method begins at RVA 0x3aa2
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00007F       */ stfld      int32 AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/::warningType /* 0400007F */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000080       */ stfld      int32 AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/::param /* 04000080 */
    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 05   |                  */ ldarg.3
    IL_0016:  /* 7D   | (04)000081       */ stfld      string AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/::description /* 04000081 */
    IL_001b:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_WarningEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_WarningEvent

.class /*02000045*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600018B*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_EndOfStreamEventHandler::.ctor

  .method /*0600018C*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_EndOfStreamEvent/*02000046*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 18
  {
  } // end of method _WMPOCXEvents_EndOfStreamEventHandler::Invoke

  .method /*0600018D*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_EndOfStreamEvent/*02000046*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 18 12 61 1C
  {
  } // end of method _WMPOCXEvents_EndOfStreamEventHandler::BeginInvoke

  .method /*0600018E*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_EndOfStreamEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_EndOfStreamEventHandler

.class /*02000046*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_EndOfStreamEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000082*/ public int32 result
  .method /*0600018F*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 result) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x3abf
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000082       */ stfld      int32 AxWMPLib._WMPOCXEvents_EndOfStreamEvent/*02000046*/::result /* 04000082 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_EndOfStreamEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_EndOfStreamEvent

.class /*02000047*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_PositionChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000190*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_PositionChangeEventHandler::.ctor

  .method /*06000191*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 20
  {
  } // end of method _WMPOCXEvents_PositionChangeEventHandler::Invoke

  .method /*06000192*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 20 12 61 1C
  {
  } // end of method _WMPOCXEvents_PositionChangeEventHandler::BeginInvoke

  .method /*06000193*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_PositionChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_PositionChangeEventHandler

.class /*02000048*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_PositionChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000083*/ public float64 oldPosition
  .field /*04000084*/ public float64 newPosition
  .method /*06000194*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(float64 oldPosition,
                               float64 newPosition) cil managed
  // SIG: 20 02 01 0D 0D
  {
    // Method begins at RVA 0x3ace
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000083       */ stfld      float64 AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/::oldPosition /* 04000083 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000084       */ stfld      float64 AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/::newPosition /* 04000084 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_PositionChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_PositionChangeEvent

.class /*02000049*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MarkerHitEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*06000195*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MarkerHitEventHandler::.ctor

  .method /*06000196*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MarkerHitEvent/*0200004A*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 28
  {
  } // end of method _WMPOCXEvents_MarkerHitEventHandler::Invoke

  .method /*06000197*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MarkerHitEvent/*0200004A*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 28 12 61 1C
  {
  } // end of method _WMPOCXEvents_MarkerHitEventHandler::BeginInvoke

  .method /*06000198*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MarkerHitEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MarkerHitEventHandler

.class /*0200004A*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MarkerHitEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000085*/ public int32 markerNum
  .method /*06000199*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 markerNum) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x3ae4
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000085       */ stfld      int32 AxWMPLib._WMPOCXEvents_MarkerHitEvent/*0200004A*/::markerNum /* 04000085 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MarkerHitEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MarkerHitEvent

.class /*0200004B*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600019A*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_DurationUnitChangeEventHandler::.ctor

  .method /*0600019B*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent/*0200004C*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 30
  {
  } // end of method _WMPOCXEvents_DurationUnitChangeEventHandler::Invoke

  .method /*0600019C*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent/*0200004C*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 30 12 61 1C
  {
  } // end of method _WMPOCXEvents_DurationUnitChangeEventHandler::BeginInvoke

  .method /*0600019D*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_DurationUnitChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_DurationUnitChangeEventHandler

.class /*0200004C*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000086*/ public int32 newDurationUnit
  .method /*0600019E*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 newDurationUnit) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x3af3
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000086       */ stfld      int32 AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent/*0200004C*/::newDurationUnit /* 04000086 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_DurationUnitChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent

.class /*0200004D*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*0600019F*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CdromMediaChangeEventHandler::.ctor

  .method /*060001A0*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent/*0200004E*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 38
  {
  } // end of method _WMPOCXEvents_CdromMediaChangeEventHandler::Invoke

  .method /*060001A1*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent/*0200004E*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 38 12 61 1C
  {
  } // end of method _WMPOCXEvents_CdromMediaChangeEventHandler::BeginInvoke

  .method /*060001A2*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CdromMediaChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CdromMediaChangeEventHandler

.class /*0200004E*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000087*/ public int32 cdromNum
  .method /*060001A3*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 cdromNum) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x3b02
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000087       */ stfld      int32 AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent/*0200004E*/::cdromNum /* 04000087 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CdromMediaChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent

.class /*0200004F*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001A4*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_PlaylistChangeEventHandler::.ctor

  .method /*060001A5*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 40
  {
  } // end of method _WMPOCXEvents_PlaylistChangeEventHandler::Invoke

  .method /*060001A6*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 40 12 61 1C
  {
  } // end of method _WMPOCXEvents_PlaylistChangeEventHandler::BeginInvoke

  .method /*060001A7*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_PlaylistChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_PlaylistChangeEventHandler

.class /*02000050*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_PlaylistChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000088*/ public object playlist
  .field /*04000089*/ public valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/ change
  .method /*060001A8*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object playlist,
                               valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/ change) cil managed
  // SIG: 20 02 01 1C 11 80 8D
  {
    // Method begins at RVA 0x3b11
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000088       */ stfld      object AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/::playlist /* 04000088 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000089       */ stfld      valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/ AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/::change /* 04000089 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_PlaylistChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_PlaylistChangeEvent

.class /*02000051*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001A9*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CurrentPlaylistChangeEventHandler::.ctor

  .method /*060001AA*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent/*02000052*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 48
  {
  } // end of method _WMPOCXEvents_CurrentPlaylistChangeEventHandler::Invoke

  .method /*060001AB*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent/*02000052*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 48 12 61 1C
  {
  } // end of method _WMPOCXEvents_CurrentPlaylistChangeEventHandler::BeginInvoke

  .method /*060001AC*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CurrentPlaylistChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEventHandler

.class /*02000052*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400008A*/ public valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/ change
  .method /*060001AD*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/ change) cil managed
  // SIG: 20 01 01 11 80 8D
  {
    // Method begins at RVA 0x3b27
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00008A       */ stfld      valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/ AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent/*02000052*/::change /* 0400008A */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CurrentPlaylistChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent

.class /*02000053*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001AE*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler::.ctor

  .method /*060001AF*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent/*02000054*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 50
  {
  } // end of method _WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler::Invoke

  .method /*060001B0*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent/*02000054*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 50 12 61 1C
  {
  } // end of method _WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler::BeginInvoke

  .method /*060001B1*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEventHandler

.class /*02000054*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400008B*/ public string bstrItemName
  .method /*060001B2*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string bstrItemName) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x3b36
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00008B       */ stfld      string AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent/*02000054*/::bstrItemName /* 0400008B */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CurrentPlaylistItemAvailableEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent

.class /*02000055*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MediaChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001B3*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MediaChangeEventHandler::.ctor

  .method /*060001B4*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MediaChangeEvent/*02000056*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 58
  {
  } // end of method _WMPOCXEvents_MediaChangeEventHandler::Invoke

  .method /*060001B5*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MediaChangeEvent/*02000056*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 58 12 61 1C
  {
  } // end of method _WMPOCXEvents_MediaChangeEventHandler::BeginInvoke

  .method /*060001B6*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MediaChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MediaChangeEventHandler

.class /*02000056*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MediaChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400008C*/ public object item
  .method /*060001B7*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object item) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x3b45
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00008C       */ stfld      object AxWMPLib._WMPOCXEvents_MediaChangeEvent/*02000056*/::item /* 0400008C */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MediaChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MediaChangeEvent

.class /*02000057*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001B8*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CurrentMediaItemAvailableEventHandler::.ctor

  .method /*060001B9*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent/*02000058*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 60
  {
  } // end of method _WMPOCXEvents_CurrentMediaItemAvailableEventHandler::Invoke

  .method /*060001BA*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent/*02000058*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 60 12 61 1C
  {
  } // end of method _WMPOCXEvents_CurrentMediaItemAvailableEventHandler::BeginInvoke

  .method /*060001BB*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CurrentMediaItemAvailableEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEventHandler

.class /*02000058*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400008D*/ public string bstrItemName
  .method /*060001BC*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string bstrItemName) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x3b54
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00008D       */ stfld      string AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent/*02000058*/::bstrItemName /* 0400008D */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CurrentMediaItemAvailableEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent

.class /*02000059*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001BD*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_CurrentItemChangeEventHandler::.ctor

  .method /*060001BE*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent/*0200005A*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 68
  {
  } // end of method _WMPOCXEvents_CurrentItemChangeEventHandler::Invoke

  .method /*060001BF*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent/*0200005A*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 68 12 61 1C
  {
  } // end of method _WMPOCXEvents_CurrentItemChangeEventHandler::BeginInvoke

  .method /*060001C0*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_CurrentItemChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_CurrentItemChangeEventHandler

.class /*0200005A*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400008E*/ public object pdispMedia
  .method /*060001C1*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object pdispMedia) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x3b63
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00008E       */ stfld      object AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent/*0200005A*/::pdispMedia /* 0400008E */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_CurrentItemChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent

.class /*0200005B*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001C2*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler::.ctor

  .method /*060001C3*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 70
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler::Invoke

  .method /*060001C4*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 70 12 61 1C
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler::BeginInvoke

  .method /*060001C5*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEventHandler

.class /*0200005C*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400008F*/ public string bstrAttribName
  .field /*04000090*/ public string bstrAttribVal
  .method /*060001C6*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string bstrAttribName,
                               string bstrAttribVal) cil managed
  // SIG: 20 02 01 0E 0E
  {
    // Method begins at RVA 0x3b72
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00008F       */ stfld      string AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/::bstrAttribName /* 0400008F */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000090       */ stfld      string AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/::bstrAttribVal /* 04000090 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringAddedEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent

.class /*0200005D*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001C7*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler::.ctor

  .method /*060001C8*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 78
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler::Invoke

  .method /*060001C9*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 78 12 61 1C
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler::BeginInvoke

  .method /*060001CA*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEventHandler

.class /*0200005E*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000091*/ public string bstrAttribName
  .field /*04000092*/ public string bstrAttribVal
  .method /*060001CB*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string bstrAttribName,
                               string bstrAttribVal) cil managed
  // SIG: 20 02 01 0E 0E
  {
    // Method begins at RVA 0x3b88
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000091       */ stfld      string AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/::bstrAttribName /* 04000091 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000092       */ stfld      string AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/::bstrAttribVal /* 04000092 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent

.class /*0200005F*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001CC*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler::.ctor

  .method /*060001CD*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 80
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler::Invoke

  .method /*060001CE*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 80 12 61 1C
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler::BeginInvoke

  .method /*060001CF*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEventHandler

.class /*02000060*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000093*/ public string bstrAttribName
  .field /*04000094*/ public string bstrOldAttribVal
  .field /*04000095*/ public string bstrNewAttribVal
  .method /*060001D0*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string bstrAttribName,
                               string bstrOldAttribVal,
                               string bstrNewAttribVal) cil managed
  // SIG: 20 03 01 0E 0E 0E
  {
    // Method begins at RVA 0x3b9e
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000093       */ stfld      string AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/::bstrAttribName /* 04000093 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000094       */ stfld      string AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/::bstrOldAttribVal /* 04000094 */
    IL_0014:  /* 02   |                  */ ldarg.0
    IL_0015:  /* 05   |                  */ ldarg.3
    IL_0016:  /* 7D   | (04)000095       */ stfld      string AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/::bstrNewAttribVal /* 04000095 */
    IL_001b:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MediaCollectionAttributeStringChangedEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent

.class /*02000061*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001D1*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler::.ctor

  .method /*060001D2*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent/*02000062*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 88
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler::Invoke

  .method /*060001D3*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent/*02000062*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 88 12 61 1C
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler::BeginInvoke

  .method /*060001D4*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEventHandler

.class /*02000062*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000096*/ public string bstrPlaylistName
  .method /*060001D5*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string bstrPlaylistName) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x3bbb
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000096       */ stfld      string AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent/*02000062*/::bstrPlaylistName /* 04000096 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent

.class /*02000063*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001D6*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler::.ctor

  .method /*060001D7*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent/*02000064*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 90
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler::Invoke

  .method /*060001D8*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent/*02000064*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 90 12 61 1C
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler::BeginInvoke

  .method /*060001D9*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEventHandler

.class /*02000064*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000097*/ public string bstrPlaylistName
  .method /*060001DA*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string bstrPlaylistName) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x3bca
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000097       */ stfld      string AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent/*02000064*/::bstrPlaylistName /* 04000097 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent

.class /*02000065*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001DB*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler::.ctor

  .method /*060001DC*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 98
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler::Invoke

  .method /*060001DD*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 98 12 61 1C
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler::BeginInvoke

  .method /*060001DE*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEventHandler

.class /*02000066*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*04000098*/ public string bstrPlaylistName
  .field /*04000099*/ public bool varfIsDeleted
  .method /*060001DF*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string bstrPlaylistName,
                               bool varfIsDeleted) cil managed
  // SIG: 20 02 01 0E 02
  {
    // Method begins at RVA 0x3bd9
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)000098       */ stfld      string AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/::bstrPlaylistName /* 04000098 */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)000099       */ stfld      bool AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/::varfIsDeleted /* 04000099 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent

.class /*02000067*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_ModeChangeEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001E0*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_ModeChangeEventHandler::.ctor

  .method /*060001E1*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 A0
  {
  } // end of method _WMPOCXEvents_ModeChangeEventHandler::Invoke

  .method /*060001E2*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 A0 12 61 1C
  {
  } // end of method _WMPOCXEvents_ModeChangeEventHandler::BeginInvoke

  .method /*060001E3*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_ModeChangeEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_ModeChangeEventHandler

.class /*02000068*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_ModeChangeEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400009A*/ public string modeName
  .field /*0400009B*/ public bool newValue
  .method /*060001E4*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(string modeName,
                               bool newValue) cil managed
  // SIG: 20 02 01 0E 02
  {
    // Method begins at RVA 0x3bef
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00009A       */ stfld      string AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/::modeName /* 0400009A */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 04   |                  */ ldarg.2
    IL_000f:  /* 7D   | (04)00009B       */ stfld      bool AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/::newValue /* 0400009B */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_ModeChangeEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_ModeChangeEvent

.class /*02000069*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_MediaErrorEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001E5*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_MediaErrorEventHandler::.ctor

  .method /*060001E6*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_MediaErrorEvent/*0200006A*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 A8
  {
  } // end of method _WMPOCXEvents_MediaErrorEventHandler::Invoke

  .method /*060001E7*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_MediaErrorEvent/*0200006A*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 A8 12 61 1C
  {
  } // end of method _WMPOCXEvents_MediaErrorEventHandler::BeginInvoke

  .method /*060001E8*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_MediaErrorEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_MediaErrorEventHandler

.class /*0200006A*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_MediaErrorEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400009C*/ public object pMediaObject
  .method /*060001E9*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object pMediaObject) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x3c05
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00009C       */ stfld      object AxWMPLib._WMPOCXEvents_MediaErrorEvent/*0200006A*/::pMediaObject /* 0400009C */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_MediaErrorEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_MediaErrorEvent

.class /*0200006B*/ public auto ansi sealed AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler
       extends [mscorlib/*23000002*/]System.MulticastDelegate/*01000002*/
{
  .method /*060001EA*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  // SIG: 20 02 01 1C 18
  {
  } // end of method _WMPOCXEvents_OpenPlaylistSwitchEventHandler::.ctor

  .method /*060001EB*/ public hidebysig newslot virtual 
          instance void  Invoke(object sender,
                                class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent/*0200006C*/ e) runtime managed
  // SIG: 20 02 01 1C 12 81 B0
  {
  } // end of method _WMPOCXEvents_OpenPlaylistSwitchEventHandler::Invoke

  .method /*060001EC*/ public hidebysig newslot virtual 
          instance class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ 
          BeginInvoke(object sender,
                      class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent/*0200006C*/ e,
                      class [mscorlib/*23000002*/]System.AsyncCallback/*01000018*/ callback,
                      object 'object') runtime managed
  // SIG: 20 04 12 5D 1C 12 81 B0 12 61 1C
  {
  } // end of method _WMPOCXEvents_OpenPlaylistSwitchEventHandler::BeginInvoke

  .method /*060001ED*/ public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib/*23000002*/]System.IAsyncResult/*01000017*/ result) runtime managed
  // SIG: 20 01 01 12 5D
  {
  } // end of method _WMPOCXEvents_OpenPlaylistSwitchEventHandler::EndInvoke

} // end of class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEventHandler

.class /*0200006C*/ public auto ansi beforefieldinit AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
{
  .field /*0400009D*/ public object pItem
  .method /*060001EE*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(object pItem) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x3c14
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00009D       */ stfld      object AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent/*0200006C*/::pItem /* 0400009D */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method _WMPOCXEvents_OpenPlaylistSwitchEvent::.ctor

} // end of class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent

.class /*0200006D*/ public auto ansi beforefieldinit AxWMPLib.AxWindowsMediaPlayerEventMulticaster
       extends [mscorlib/*23000002*/]System.Object/*01000003*/
       implements [Interop.WMPLib/*23000003*/]WMPLib._WMPOCXEvents/*01000004*/
{
  .custom /*0C000044:0A00003B*/ instance void [mscorlib/*23000002*/]System.Runtime.InteropServices.ClassInterfaceAttribute/*01000034*/::.ctor(valuetype [mscorlib/*23000002*/]System.Runtime.InteropServices.ClassInterfaceType/*01000035*/) /* 0A00003B */ = ( 01 00 00 00 00 00 00 00 ) 
  .field /*0400009E*/ private class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ parent
  .method /*060001EF*/ public hidebysig specialname rtspecialname 
          instance void  .ctor(class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ parent) cil managed
  // SIG: 20 01 01 12 08
  {
    // Method begins at RVA 0x3c23
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00003A       */ call       instance void [mscorlib/*23000002*/]System.Object/*01000003*/::.ctor() /* 0A00003A */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 7D   | (04)00009E       */ stfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::.ctor

  .method /*060001F0*/ public hidebysig newslot virtual 
          instance void  DomainChange(string strDomain) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x3c34
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000003*/ init (class AxWMPLib._WMPOCXEvents_DomainChangeEvent/*02000004*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0000EA       */ newobj     instance void AxWMPLib._WMPOCXEvents_DomainChangeEvent/*02000004*/::.ctor(string) /* 060000EA */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000A8       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDomainChange(object,
                                                                                                                                    class AxWMPLib._WMPOCXEvents_DomainChangeEvent/*02000004*/) /* 060000A8 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::DomainChange

  .method /*060001F1*/ public hidebysig newslot virtual 
          instance void  SwitchedToPlayerApplication() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x3c5c
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000A9       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnSwitchedToPlayerApplication(object,
                                                                                                                                                   class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000A9 */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::SwitchedToPlayerApplication

  .method /*060001F2*/ public hidebysig newslot virtual 
          instance void  SwitchedToControl() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x3c84
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000AA       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnSwitchedToControl(object,
                                                                                                                                         class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000AA */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::SwitchedToControl

  .method /*060001F3*/ public hidebysig newslot virtual 
          instance void  PlayerDockedStateChange() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x3cac
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000AB       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPlayerDockedStateChange(object,
                                                                                                                                               class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000AB */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PlayerDockedStateChange

  .method /*060001F4*/ public hidebysig newslot virtual 
          instance void  PlayerReconnect() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x3cd4
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000AC       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPlayerReconnect(object,
                                                                                                                                       class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000AC */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PlayerReconnect

  .method /*060001F5*/ public hidebysig newslot virtual 
          instance void  Click(int16 nButton,
                               int16 nShiftState,
                               int32 fX,
                               int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x3cfc
    // Code size       30 (0x1e)
    .maxstack  5
    .locals /*11000005*/ init (class AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 05   |                  */ ldarg.3
    IL_0003:  /* 0E   | 04               */ ldarg.s    fY
    IL_0005:  /* 73   | (06)0000EF       */ newobj     instance void AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/::.ctor(int16,
                                                                                                                          int16,
                                                                                                                          int32,
                                                                                                                          int32) /* 060000EF */
    IL_000a:  /* 0A   |                  */ stloc.0
    IL_000b:  /* 02   |                  */ ldarg.0
    IL_000c:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0017:  /* 06   |                  */ ldloc.0
    IL_0018:  /* 6F   | (06)0000AD       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnClickEvent(object,
                                                                                                                                  class AxWMPLib._WMPOCXEvents_ClickEvent/*02000006*/) /* 060000AD */
    IL_001d:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::Click

  .method /*060001F6*/ public hidebysig newslot virtual 
          instance void  DoubleClick(int16 nButton,
                                     int16 nShiftState,
                                     int32 fX,
                                     int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x3d28
    // Code size       30 (0x1e)
    .maxstack  5
    .locals /*11000006*/ init (class AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 05   |                  */ ldarg.3
    IL_0003:  /* 0E   | 04               */ ldarg.s    fY
    IL_0005:  /* 73   | (06)0000F4       */ newobj     instance void AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/::.ctor(int16,
                                                                                                                                int16,
                                                                                                                                int32,
                                                                                                                                int32) /* 060000F4 */
    IL_000a:  /* 0A   |                  */ stloc.0
    IL_000b:  /* 02   |                  */ ldarg.0
    IL_000c:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0017:  /* 06   |                  */ ldloc.0
    IL_0018:  /* 6F   | (06)0000AE       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDoubleClickEvent(object,
                                                                                                                                        class AxWMPLib._WMPOCXEvents_DoubleClickEvent/*02000008*/) /* 060000AE */
    IL_001d:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::DoubleClick

  .method /*060001F7*/ public hidebysig newslot virtual 
          instance void  KeyDown(int16 nKeyCode,
                                 int16 nShiftState) cil managed
  // SIG: 20 02 01 06 06
  {
    // Method begins at RVA 0x3d54
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000007*/ init (class AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)0000F9       */ newobj     instance void AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/::.ctor(int16,
                                                                                                                            int16) /* 060000F9 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000AF       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnKeyDownEvent(object,
                                                                                                                                    class AxWMPLib._WMPOCXEvents_KeyDownEvent/*0200000A*/) /* 060000AF */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::KeyDown

  .method /*060001F8*/ public hidebysig newslot virtual 
          instance void  KeyPress(int16 nKeyAscii) cil managed
  // SIG: 20 01 01 06
  {
    // Method begins at RVA 0x3d7c
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000008*/ init (class AxWMPLib._WMPOCXEvents_KeyPressEvent/*0200000C*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0000FE       */ newobj     instance void AxWMPLib._WMPOCXEvents_KeyPressEvent/*0200000C*/::.ctor(int16) /* 060000FE */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000B0       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnKeyPressEvent(object,
                                                                                                                                     class AxWMPLib._WMPOCXEvents_KeyPressEvent/*0200000C*/) /* 060000B0 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::KeyPress

  .method /*060001F9*/ public hidebysig newslot virtual 
          instance void  KeyUp(int16 nKeyCode,
                               int16 nShiftState) cil managed
  // SIG: 20 02 01 06 06
  {
    // Method begins at RVA 0x3da4
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000009*/ init (class AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)000103       */ newobj     instance void AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/::.ctor(int16,
                                                                                                                          int16) /* 06000103 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000B1       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnKeyUpEvent(object,
                                                                                                                                  class AxWMPLib._WMPOCXEvents_KeyUpEvent/*0200000E*/) /* 060000B1 */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::KeyUp

  .method /*060001FA*/ public hidebysig newslot virtual 
          instance void  MouseDown(int16 nButton,
                                   int16 nShiftState,
                                   int32 fX,
                                   int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x3dcc
    // Code size       30 (0x1e)
    .maxstack  5
    .locals /*1100000A*/ init (class AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 05   |                  */ ldarg.3
    IL_0003:  /* 0E   | 04               */ ldarg.s    fY
    IL_0005:  /* 73   | (06)000108       */ newobj     instance void AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/::.ctor(int16,
                                                                                                                              int16,
                                                                                                                              int32,
                                                                                                                              int32) /* 06000108 */
    IL_000a:  /* 0A   |                  */ stloc.0
    IL_000b:  /* 02   |                  */ ldarg.0
    IL_000c:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0017:  /* 06   |                  */ ldloc.0
    IL_0018:  /* 6F   | (06)0000B2       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMouseDownEvent(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_MouseDownEvent/*02000010*/) /* 060000B2 */
    IL_001d:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MouseDown

  .method /*060001FB*/ public hidebysig newslot virtual 
          instance void  MouseMove(int16 nButton,
                                   int16 nShiftState,
                                   int32 fX,
                                   int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x3df8
    // Code size       30 (0x1e)
    .maxstack  5
    .locals /*1100000B*/ init (class AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 05   |                  */ ldarg.3
    IL_0003:  /* 0E   | 04               */ ldarg.s    fY
    IL_0005:  /* 73   | (06)00010D       */ newobj     instance void AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/::.ctor(int16,
                                                                                                                              int16,
                                                                                                                              int32,
                                                                                                                              int32) /* 0600010D */
    IL_000a:  /* 0A   |                  */ stloc.0
    IL_000b:  /* 02   |                  */ ldarg.0
    IL_000c:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0017:  /* 06   |                  */ ldloc.0
    IL_0018:  /* 6F   | (06)0000B3       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMouseMoveEvent(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_MouseMoveEvent/*02000012*/) /* 060000B3 */
    IL_001d:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MouseMove

  .method /*060001FC*/ public hidebysig newslot virtual 
          instance void  MouseUp(int16 nButton,
                                 int16 nShiftState,
                                 int32 fX,
                                 int32 fY) cil managed
  // SIG: 20 04 01 06 06 08 08
  {
    // Method begins at RVA 0x3e24
    // Code size       30 (0x1e)
    .maxstack  5
    .locals /*1100000C*/ init (class AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 05   |                  */ ldarg.3
    IL_0003:  /* 0E   | 04               */ ldarg.s    fY
    IL_0005:  /* 73   | (06)000112       */ newobj     instance void AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/::.ctor(int16,
                                                                                                                            int16,
                                                                                                                            int32,
                                                                                                                            int32) /* 06000112 */
    IL_000a:  /* 0A   |                  */ stloc.0
    IL_000b:  /* 02   |                  */ ldarg.0
    IL_000c:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0017:  /* 06   |                  */ ldloc.0
    IL_0018:  /* 6F   | (06)0000B4       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMouseUpEvent(object,
                                                                                                                                    class AxWMPLib._WMPOCXEvents_MouseUpEvent/*02000014*/) /* 060000B4 */
    IL_001d:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MouseUp

  .method /*060001FD*/ public hidebysig newslot virtual 
          instance void  DeviceConnect(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice) cil managed
  // SIG: 20 01 01 12 65
  {
    // Method begins at RVA 0x3e50
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100000D*/ init (class AxWMPLib._WMPOCXEvents_DeviceConnectEvent/*02000016*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000117       */ newobj     instance void AxWMPLib._WMPOCXEvents_DeviceConnectEvent/*02000016*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/) /* 06000117 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000B5       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDeviceConnect(object,
                                                                                                                                     class AxWMPLib._WMPOCXEvents_DeviceConnectEvent/*02000016*/) /* 060000B5 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::DeviceConnect

  .method /*060001FE*/ public hidebysig newslot virtual 
          instance void  DeviceDisconnect(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice) cil managed
  // SIG: 20 01 01 12 65
  {
    // Method begins at RVA 0x3e78
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100000E*/ init (class AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent/*02000018*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)00011C       */ newobj     instance void AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent/*02000018*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/) /* 0600011C */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000B6       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDeviceDisconnect(object,
                                                                                                                                        class AxWMPLib._WMPOCXEvents_DeviceDisconnectEvent/*02000018*/) /* 060000B6 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::DeviceDisconnect

  .method /*060001FF*/ public hidebysig newslot virtual 
          instance void  DeviceStatusChange(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice,
                                            valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPDeviceStatus/*0100001A*/ newStatus) cil managed
  // SIG: 20 02 01 12 65 11 69
  {
    // Method begins at RVA 0x3ea0
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*1100000F*/ init (class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)000121       */ newobj     instance void AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/,
                                                                                                                                       valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPDeviceStatus/*0100001A*/) /* 06000121 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000B7       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDeviceStatusChange(object,
                                                                                                                                          class AxWMPLib._WMPOCXEvents_DeviceStatusChangeEvent/*0200001A*/) /* 060000B7 */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::DeviceStatusChange

  .method /*06000200*/ public hidebysig newslot virtual 
          instance void  DeviceSyncStateChange(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice,
                                               valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPSyncState/*0100001B*/ newState) cil managed
  // SIG: 20 02 01 12 65 11 6D
  {
    // Method begins at RVA 0x3ec8
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000010*/ init (class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)000126       */ newobj     instance void AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/,
                                                                                                                                          valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPSyncState/*0100001B*/) /* 06000126 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000B8       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDeviceSyncStateChange(object,
                                                                                                                                             class AxWMPLib._WMPOCXEvents_DeviceSyncStateChangeEvent/*0200001C*/) /* 060000B8 */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::DeviceSyncStateChange

  .method /*06000201*/ public hidebysig newslot virtual 
          instance void  DeviceSyncError(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice,
                                         object pMedia) cil managed
  // SIG: 20 02 01 12 65 1C
  {
    // Method begins at RVA 0x3ef0
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000011*/ init (class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)00012B       */ newobj     instance void AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/,
                                                                                                                                    object) /* 0600012B */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000B9       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDeviceSyncError(object,
                                                                                                                                       class AxWMPLib._WMPOCXEvents_DeviceSyncErrorEvent/*0200001E*/) /* 060000B9 */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::DeviceSyncError

  .method /*06000202*/ public hidebysig newslot virtual 
          instance void  CreatePartnershipComplete(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/ pDevice,
                                                   int32 hrResult) cil managed
  // SIG: 20 02 01 12 65 08
  {
    // Method begins at RVA 0x3f18
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000012*/ init (class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)000130       */ newobj     instance void AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPSyncDevice/*01000019*/,
                                                                                                                                              int32) /* 06000130 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000BA       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCreatePartnershipComplete(object,
                                                                                                                                                 class AxWMPLib._WMPOCXEvents_CreatePartnershipCompleteEvent/*02000020*/) /* 060000BA */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CreatePartnershipComplete

  .method /*06000203*/ public hidebysig newslot virtual 
          instance void  CdromRipStateChange(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/ pCdromRip,
                                             valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPRipState/*0100001D*/ wmprs) cil managed
  // SIG: 20 02 01 12 71 11 75
  {
    // Method begins at RVA 0x3f40
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000013*/ init (class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)000135       */ newobj     instance void AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/,
                                                                                                                                        valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPRipState/*0100001D*/) /* 06000135 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000BB       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCdromRipStateChange(object,
                                                                                                                                           class AxWMPLib._WMPOCXEvents_CdromRipStateChangeEvent/*02000022*/) /* 060000BB */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CdromRipStateChange

  .method /*06000204*/ public hidebysig newslot virtual 
          instance void  CdromRipMediaError(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/ pCdromRip,
                                            object pMedia) cil managed
  // SIG: 20 02 01 12 71 1C
  {
    // Method begins at RVA 0x3f68
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000014*/ init (class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)00013A       */ newobj     instance void AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromRip/*0100001C*/,
                                                                                                                                       object) /* 0600013A */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000BC       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCdromRipMediaError(object,
                                                                                                                                          class AxWMPLib._WMPOCXEvents_CdromRipMediaErrorEvent/*02000024*/) /* 060000BC */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CdromRipMediaError

  .method /*06000205*/ public hidebysig newslot virtual 
          instance void  CdromBurnStateChange(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn,
                                              valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPBurnState/*0100001F*/ wmpbs) cil managed
  // SIG: 20 02 01 12 79 11 7D
  {
    // Method begins at RVA 0x3f90
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000015*/ init (class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)00013F       */ newobj     instance void AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/,
                                                                                                                                         valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPBurnState/*0100001F*/) /* 0600013F */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000BD       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCdromBurnStateChange(object,
                                                                                                                                            class AxWMPLib._WMPOCXEvents_CdromBurnStateChangeEvent/*02000026*/) /* 060000BD */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CdromBurnStateChange

  .method /*06000206*/ public hidebysig newslot virtual 
          instance void  CdromBurnMediaError(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn,
                                             object pMedia) cil managed
  // SIG: 20 02 01 12 79 1C
  {
    // Method begins at RVA 0x3fb8
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000016*/ init (class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)000144       */ newobj     instance void AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/,
                                                                                                                                        object) /* 06000144 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000BE       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCdromBurnMediaError(object,
                                                                                                                                           class AxWMPLib._WMPOCXEvents_CdromBurnMediaErrorEvent/*02000028*/) /* 060000BE */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CdromBurnMediaError

  .method /*06000207*/ public hidebysig newslot virtual 
          instance void  CdromBurnError(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/ pCdromBurn,
                                        int32 hrError) cil managed
  // SIG: 20 02 01 12 79 08
  {
    // Method begins at RVA 0x3fe0
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000017*/ init (class AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)000149       */ newobj     instance void AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPCdromBurn/*0100001E*/,
                                                                                                                                   int32) /* 06000149 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000BF       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCdromBurnError(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_CdromBurnErrorEvent/*0200002A*/) /* 060000BF */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CdromBurnError

  .method /*06000208*/ public hidebysig newslot virtual 
          instance void  LibraryConnect(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/ pLibrary) cil managed
  // SIG: 20 01 01 12 80 81
  {
    // Method begins at RVA 0x4008
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000018*/ init (class AxWMPLib._WMPOCXEvents_LibraryConnectEvent/*0200002C*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)00014E       */ newobj     instance void AxWMPLib._WMPOCXEvents_LibraryConnectEvent/*0200002C*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/) /* 0600014E */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000C0       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnLibraryConnect(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_LibraryConnectEvent/*0200002C*/) /* 060000C0 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::LibraryConnect

  .method /*06000209*/ public hidebysig newslot virtual 
          instance void  LibraryDisconnect(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/ pLibrary) cil managed
  // SIG: 20 01 01 12 80 81
  {
    // Method begins at RVA 0x4030
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000019*/ init (class AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent/*0200002E*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000153       */ newobj     instance void AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent/*0200002E*/::.ctor(class [Interop.WMPLib/*23000003*/]WMPLib.IWMPLibrary/*01000020*/) /* 06000153 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000C1       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnLibraryDisconnect(object,
                                                                                                                                         class AxWMPLib._WMPOCXEvents_LibraryDisconnectEvent/*0200002E*/) /* 060000C1 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::LibraryDisconnect

  .method /*0600020A*/ public hidebysig newslot virtual 
          instance void  FolderScanStateChange(valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPFolderScanState/*01000021*/ wmpfss) cil managed
  // SIG: 20 01 01 11 80 85
  {
    // Method begins at RVA 0x4058
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100001A*/ init (class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent/*02000030*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000158       */ newobj     instance void AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent/*02000030*/::.ctor(valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPFolderScanState/*01000021*/) /* 06000158 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000C2       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnFolderScanStateChange(object,
                                                                                                                                             class AxWMPLib._WMPOCXEvents_FolderScanStateChangeEvent/*02000030*/) /* 060000C2 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::FolderScanStateChange

  .method /*0600020B*/ public hidebysig newslot virtual 
          instance void  StringCollectionChange(object pdispStringCollection,
                                                valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPStringCollectionChangeEventType/*01000022*/ change,
                                                int32 lCollectionIndex) cil managed
  // SIG: 20 03 01 1C 11 80 89 08
  {
    // Method begins at RVA 0x4080
    // Code size       28 (0x1c)
    .maxstack  4
    .locals /*1100001B*/ init (class AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 05   |                  */ ldarg.3
    IL_0003:  /* 73   | (06)00015D       */ newobj     instance void AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/::.ctor(object,
                                                                                                                                           valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPStringCollectionChangeEventType/*01000022*/,
                                                                                                                                           int32) /* 0600015D */
    IL_0008:  /* 0A   |                  */ stloc.0
    IL_0009:  /* 02   |                  */ ldarg.0
    IL_000a:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000f:  /* 02   |                  */ ldarg.0
    IL_0010:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0015:  /* 06   |                  */ ldloc.0
    IL_0016:  /* 6F   | (06)0000C3       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnStringCollectionChange(object,
                                                                                                                                              class AxWMPLib._WMPOCXEvents_StringCollectionChangeEvent/*02000032*/) /* 060000C3 */
    IL_001b:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::StringCollectionChange

  .method /*0600020C*/ public hidebysig newslot virtual 
          instance void  MediaCollectionMediaAdded(object pdispMedia) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x40a8
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100001C*/ init (class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent/*02000034*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000162       */ newobj     instance void AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent/*02000034*/::.ctor(object) /* 06000162 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000C4       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMediaCollectionMediaAdded(object,
                                                                                                                                                 class AxWMPLib._WMPOCXEvents_MediaCollectionMediaAddedEvent/*02000034*/) /* 060000C4 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MediaCollectionMediaAdded

  .method /*0600020D*/ public hidebysig newslot virtual 
          instance void  MediaCollectionMediaRemoved(object pdispMedia) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x40d0
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100001D*/ init (class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent/*02000036*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000167       */ newobj     instance void AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent/*02000036*/::.ctor(object) /* 06000167 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000C5       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMediaCollectionMediaRemoved(object,
                                                                                                                                                   class AxWMPLib._WMPOCXEvents_MediaCollectionMediaRemovedEvent/*02000036*/) /* 060000C5 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MediaCollectionMediaRemoved

  .method /*0600020E*/ public hidebysig newslot virtual 
          instance void  OpenStateChange(int32 newState) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x40f8
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100001E*/ init (class AxWMPLib._WMPOCXEvents_OpenStateChangeEvent/*02000038*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)00016C       */ newobj     instance void AxWMPLib._WMPOCXEvents_OpenStateChangeEvent/*02000038*/::.ctor(int32) /* 0600016C */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000C6       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnOpenStateChange(object,
                                                                                                                                       class AxWMPLib._WMPOCXEvents_OpenStateChangeEvent/*02000038*/) /* 060000C6 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::OpenStateChange

  .method /*0600020F*/ public hidebysig newslot virtual 
          instance void  PlayStateChange(int32 newState) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x4120
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100001F*/ init (class AxWMPLib._WMPOCXEvents_PlayStateChangeEvent/*0200003A*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000171       */ newobj     instance void AxWMPLib._WMPOCXEvents_PlayStateChangeEvent/*0200003A*/::.ctor(int32) /* 06000171 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000C7       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPlayStateChange(object,
                                                                                                                                       class AxWMPLib._WMPOCXEvents_PlayStateChangeEvent/*0200003A*/) /* 060000C7 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PlayStateChange

  .method /*06000210*/ public hidebysig newslot virtual 
          instance void  AudioLanguageChange(int32 langID) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x4148
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000020*/ init (class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent/*0200003C*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000176       */ newobj     instance void AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent/*0200003C*/::.ctor(int32) /* 06000176 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000C8       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnAudioLanguageChange(object,
                                                                                                                                           class AxWMPLib._WMPOCXEvents_AudioLanguageChangeEvent/*0200003C*/) /* 060000C8 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::AudioLanguageChange

  .method /*06000211*/ public hidebysig newslot virtual 
          instance void  StatusChange() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x4170
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000C9       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnStatusChange(object,
                                                                                                                                    class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000C9 */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::StatusChange

  .method /*06000212*/ public hidebysig newslot virtual 
          instance void  ScriptCommand(string scType,
                                       string param) cil managed
  // SIG: 20 02 01 0E 0E
  {
    // Method begins at RVA 0x4198
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000021*/ init (class AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)00017B       */ newobj     instance void AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/::.ctor(string,
                                                                                                                                  string) /* 0600017B */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000CA       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnScriptCommand(object,
                                                                                                                                     class AxWMPLib._WMPOCXEvents_ScriptCommandEvent/*0200003E*/) /* 060000CA */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::ScriptCommand

  .method /*06000213*/ public hidebysig newslot virtual 
          instance void  NewStream() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x41c0
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000CB       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnNewStream(object,
                                                                                                                                 class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000CB */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::NewStream

  .method /*06000214*/ public hidebysig newslot virtual 
          instance void  Disconnect(int32 result) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x41e8
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000022*/ init (class AxWMPLib._WMPOCXEvents_DisconnectEvent/*02000040*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000180       */ newobj     instance void AxWMPLib._WMPOCXEvents_DisconnectEvent/*02000040*/::.ctor(int32) /* 06000180 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000CC       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDisconnect(object,
                                                                                                                                  class AxWMPLib._WMPOCXEvents_DisconnectEvent/*02000040*/) /* 060000CC */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::Disconnect

  .method /*06000215*/ public hidebysig newslot virtual 
          instance void  Buffering(bool start) cil managed
  // SIG: 20 01 01 02
  {
    // Method begins at RVA 0x4210
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000023*/ init (class AxWMPLib._WMPOCXEvents_BufferingEvent/*02000042*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000185       */ newobj     instance void AxWMPLib._WMPOCXEvents_BufferingEvent/*02000042*/::.ctor(bool) /* 06000185 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000CD       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnBuffering(object,
                                                                                                                                 class AxWMPLib._WMPOCXEvents_BufferingEvent/*02000042*/) /* 060000CD */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::Buffering

  .method /*06000216*/ public hidebysig newslot virtual 
          instance void  Error() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x4238
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000CE       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnErrorEvent(object,
                                                                                                                                  class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000CE */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::Error

  .method /*06000217*/ public hidebysig newslot virtual 
          instance void  Warning(int32 warningType,
                                 int32 param,
                                 string description) cil managed
  // SIG: 20 03 01 08 08 0E
  {
    // Method begins at RVA 0x4260
    // Code size       28 (0x1c)
    .maxstack  4
    .locals /*11000024*/ init (class AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 05   |                  */ ldarg.3
    IL_0003:  /* 73   | (06)00018A       */ newobj     instance void AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/::.ctor(int32,
                                                                                                                            int32,
                                                                                                                            string) /* 0600018A */
    IL_0008:  /* 0A   |                  */ stloc.0
    IL_0009:  /* 02   |                  */ ldarg.0
    IL_000a:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000f:  /* 02   |                  */ ldarg.0
    IL_0010:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0015:  /* 06   |                  */ ldloc.0
    IL_0016:  /* 6F   | (06)0000CF       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnWarning(object,
                                                                                                                               class AxWMPLib._WMPOCXEvents_WarningEvent/*02000044*/) /* 060000CF */
    IL_001b:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::Warning

  .method /*06000218*/ public hidebysig newslot virtual 
          instance void  EndOfStream(int32 result) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x4288
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000025*/ init (class AxWMPLib._WMPOCXEvents_EndOfStreamEvent/*02000046*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)00018F       */ newobj     instance void AxWMPLib._WMPOCXEvents_EndOfStreamEvent/*02000046*/::.ctor(int32) /* 0600018F */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000D0       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnEndOfStream(object,
                                                                                                                                   class AxWMPLib._WMPOCXEvents_EndOfStreamEvent/*02000046*/) /* 060000D0 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::EndOfStream

  .method /*06000219*/ public hidebysig newslot virtual 
          instance void  PositionChange(float64 oldPosition,
                                        float64 newPosition) cil managed
  // SIG: 20 02 01 0D 0D
  {
    // Method begins at RVA 0x42b0
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000026*/ init (class AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)000194       */ newobj     instance void AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/::.ctor(float64,
                                                                                                                                   float64) /* 06000194 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000D1       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPositionChange(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_PositionChangeEvent/*02000048*/) /* 060000D1 */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PositionChange

  .method /*0600021A*/ public hidebysig newslot virtual 
          instance void  MarkerHit(int32 markerNum) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x42d8
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000027*/ init (class AxWMPLib._WMPOCXEvents_MarkerHitEvent/*0200004A*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)000199       */ newobj     instance void AxWMPLib._WMPOCXEvents_MarkerHitEvent/*0200004A*/::.ctor(int32) /* 06000199 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000D2       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMarkerHit(object,
                                                                                                                                 class AxWMPLib._WMPOCXEvents_MarkerHitEvent/*0200004A*/) /* 060000D2 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MarkerHit

  .method /*0600021B*/ public hidebysig newslot virtual 
          instance void  DurationUnitChange(int32 newDurationUnit) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x4300
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000028*/ init (class AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent/*0200004C*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)00019E       */ newobj     instance void AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent/*0200004C*/::.ctor(int32) /* 0600019E */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000D3       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnDurationUnitChange(object,
                                                                                                                                          class AxWMPLib._WMPOCXEvents_DurationUnitChangeEvent/*0200004C*/) /* 060000D3 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::DurationUnitChange

  .method /*0600021C*/ public hidebysig newslot virtual 
          instance void  CdromMediaChange(int32 cdromNum) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x4328
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000029*/ init (class AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent/*0200004E*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001A3       */ newobj     instance void AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent/*0200004E*/::.ctor(int32) /* 060001A3 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000D4       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCdromMediaChange(object,
                                                                                                                                        class AxWMPLib._WMPOCXEvents_CdromMediaChangeEvent/*0200004E*/) /* 060000D4 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CdromMediaChange

  .method /*0600021D*/ public hidebysig newslot virtual 
          instance void  PlaylistChange(object playlist,
                                        valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/ change) cil managed
  // SIG: 20 02 01 1C 11 80 8D
  {
    // Method begins at RVA 0x4350
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*1100002A*/ init (class AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)0001A8       */ newobj     instance void AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/::.ctor(object,
                                                                                                                                   valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/) /* 060001A8 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000D5       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPlaylistChange(object,
                                                                                                                                      class AxWMPLib._WMPOCXEvents_PlaylistChangeEvent/*02000050*/) /* 060000D5 */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PlaylistChange

  .method /*0600021E*/ public hidebysig newslot virtual 
          instance void  CurrentPlaylistChange(valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/ change) cil managed
  // SIG: 20 01 01 11 80 8D
  {
    // Method begins at RVA 0x4378
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100002B*/ init (class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent/*02000052*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001AD       */ newobj     instance void AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent/*02000052*/::.ctor(valuetype [Interop.WMPLib/*23000003*/]WMPLib.WMPPlaylistChangeEventType/*01000023*/) /* 060001AD */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000D6       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCurrentPlaylistChange(object,
                                                                                                                                             class AxWMPLib._WMPOCXEvents_CurrentPlaylistChangeEvent/*02000052*/) /* 060000D6 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CurrentPlaylistChange

  .method /*0600021F*/ public hidebysig newslot virtual 
          instance void  CurrentPlaylistItemAvailable(string bstrItemName) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x43a0
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100002C*/ init (class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent/*02000054*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001B2       */ newobj     instance void AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent/*02000054*/::.ctor(string) /* 060001B2 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000D7       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCurrentPlaylistItemAvailable(object,
                                                                                                                                                    class AxWMPLib._WMPOCXEvents_CurrentPlaylistItemAvailableEvent/*02000054*/) /* 060000D7 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CurrentPlaylistItemAvailable

  .method /*06000220*/ public hidebysig newslot virtual 
          instance void  MediaChange(object item) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x43c8
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100002D*/ init (class AxWMPLib._WMPOCXEvents_MediaChangeEvent/*02000056*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001B7       */ newobj     instance void AxWMPLib._WMPOCXEvents_MediaChangeEvent/*02000056*/::.ctor(object) /* 060001B7 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000D8       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMediaChange(object,
                                                                                                                                   class AxWMPLib._WMPOCXEvents_MediaChangeEvent/*02000056*/) /* 060000D8 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MediaChange

  .method /*06000221*/ public hidebysig newslot virtual 
          instance void  CurrentMediaItemAvailable(string bstrItemName) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x43f0
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100002E*/ init (class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent/*02000058*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001BC       */ newobj     instance void AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent/*02000058*/::.ctor(string) /* 060001BC */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000D9       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCurrentMediaItemAvailable(object,
                                                                                                                                                 class AxWMPLib._WMPOCXEvents_CurrentMediaItemAvailableEvent/*02000058*/) /* 060000D9 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CurrentMediaItemAvailable

  .method /*06000222*/ public hidebysig newslot virtual 
          instance void  CurrentItemChange(object pdispMedia) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x4418
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*1100002F*/ init (class AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent/*0200005A*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001C1       */ newobj     instance void AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent/*0200005A*/::.ctor(object) /* 060001C1 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000DA       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnCurrentItemChange(object,
                                                                                                                                         class AxWMPLib._WMPOCXEvents_CurrentItemChangeEvent/*0200005A*/) /* 060000DA */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::CurrentItemChange

  .method /*06000223*/ public hidebysig newslot virtual 
          instance void  MediaCollectionChange() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x4440
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000DB       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMediaCollectionChange(object,
                                                                                                                                             class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000DB */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MediaCollectionChange

  .method /*06000224*/ public hidebysig newslot virtual 
          instance void  MediaCollectionAttributeStringAdded(string bstrAttribName,
                                                             string bstrAttribVal) cil managed
  // SIG: 20 02 01 0E 0E
  {
    // Method begins at RVA 0x4468
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000030*/ init (class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)0001C6       */ newobj     instance void AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/::.ctor(string,
                                                                                                                                                        string) /* 060001C6 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000DC       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMediaCollectionAttributeStringAdded(object,
                                                                                                                                                           class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringAddedEvent/*0200005C*/) /* 060000DC */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MediaCollectionAttributeStringAdded

  .method /*06000225*/ public hidebysig newslot virtual 
          instance void  MediaCollectionAttributeStringRemoved(string bstrAttribName,
                                                               string bstrAttribVal) cil managed
  // SIG: 20 02 01 0E 0E
  {
    // Method begins at RVA 0x4490
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000031*/ init (class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)0001CB       */ newobj     instance void AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/::.ctor(string,
                                                                                                                                                          string) /* 060001CB */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000DD       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMediaCollectionAttributeStringRemoved(object,
                                                                                                                                                             class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringRemovedEvent/*0200005E*/) /* 060000DD */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MediaCollectionAttributeStringRemoved

  .method /*06000226*/ public hidebysig newslot virtual 
          instance void  MediaCollectionAttributeStringChanged(string bstrAttribName,
                                                               string bstrOldAttribVal,
                                                               string bstrNewAttribVal) cil managed
  // SIG: 20 03 01 0E 0E 0E
  {
    // Method begins at RVA 0x44b8
    // Code size       28 (0x1c)
    .maxstack  4
    .locals /*11000032*/ init (class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 05   |                  */ ldarg.3
    IL_0003:  /* 73   | (06)0001D0       */ newobj     instance void AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/::.ctor(string,
                                                                                                                                                          string,
                                                                                                                                                          string) /* 060001D0 */
    IL_0008:  /* 0A   |                  */ stloc.0
    IL_0009:  /* 02   |                  */ ldarg.0
    IL_000a:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000f:  /* 02   |                  */ ldarg.0
    IL_0010:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0015:  /* 06   |                  */ ldloc.0
    IL_0016:  /* 6F   | (06)0000DE       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMediaCollectionAttributeStringChanged(object,
                                                                                                                                                             class AxWMPLib._WMPOCXEvents_MediaCollectionAttributeStringChangedEvent/*02000060*/) /* 060000DE */
    IL_001b:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MediaCollectionAttributeStringChanged

  .method /*06000227*/ public hidebysig newslot virtual 
          instance void  PlaylistCollectionChange() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x44e0
    // Code size       25 (0x19)
    .maxstack  3
    .locals /*11000004*/ init (class [mscorlib/*23000002*/]System.EventArgs/*01000016*/ V_0)
    IL_0000:  /* 73   | (0A)00003C       */ newobj     instance void [mscorlib/*23000002*/]System.EventArgs/*01000016*/::.ctor() /* 0A00003C */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0012:  /* 06   |                  */ ldloc.0
    IL_0013:  /* 6F   | (06)0000DF       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPlaylistCollectionChange(object,
                                                                                                                                                class [mscorlib/*23000002*/]System.EventArgs/*01000016*/) /* 060000DF */
    IL_0018:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PlaylistCollectionChange

  .method /*06000228*/ public hidebysig newslot virtual 
          instance void  PlaylistCollectionPlaylistAdded(string bstrPlaylistName) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x4508
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000033*/ init (class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent/*02000062*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001D5       */ newobj     instance void AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent/*02000062*/::.ctor(string) /* 060001D5 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000E0       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPlaylistCollectionPlaylistAdded(object,
                                                                                                                                                       class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistAddedEvent/*02000062*/) /* 060000E0 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PlaylistCollectionPlaylistAdded

  .method /*06000229*/ public hidebysig newslot virtual 
          instance void  PlaylistCollectionPlaylistRemoved(string bstrPlaylistName) cil managed
  // SIG: 20 01 01 0E
  {
    // Method begins at RVA 0x4530
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000034*/ init (class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent/*02000064*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001DA       */ newobj     instance void AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent/*02000064*/::.ctor(string) /* 060001DA */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000E1       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPlaylistCollectionPlaylistRemoved(object,
                                                                                                                                                         class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistRemovedEvent/*02000064*/) /* 060000E1 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PlaylistCollectionPlaylistRemoved

  .method /*0600022A*/ public hidebysig newslot virtual 
          instance void  PlaylistCollectionPlaylistSetAsDeleted(string bstrPlaylistName,
                                                                bool varfIsDeleted) cil managed
  // SIG: 20 02 01 0E 02
  {
    // Method begins at RVA 0x4558
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000035*/ init (class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)0001DF       */ newobj     instance void AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/::.ctor(string,
                                                                                                                                                           bool) /* 060001DF */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000E2       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnPlaylistCollectionPlaylistSetAsDeleted(object,
                                                                                                                                                              class AxWMPLib._WMPOCXEvents_PlaylistCollectionPlaylistSetAsDeletedEvent/*02000066*/) /* 060000E2 */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::PlaylistCollectionPlaylistSetAsDeleted

  .method /*0600022B*/ public hidebysig newslot virtual 
          instance void  ModeChange(string modeName,
                                    bool newValue) cil managed
  // SIG: 20 02 01 0E 02
  {
    // Method begins at RVA 0x4580
    // Code size       27 (0x1b)
    .maxstack  3
    .locals /*11000036*/ init (class AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 73   | (06)0001E4       */ newobj     instance void AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/::.ctor(string,
                                                                                                                               bool) /* 060001E4 */
    IL_0007:  /* 0A   |                  */ stloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000e:  /* 02   |                  */ ldarg.0
    IL_000f:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 6F   | (06)0000E3       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnModeChange(object,
                                                                                                                                  class AxWMPLib._WMPOCXEvents_ModeChangeEvent/*02000068*/) /* 060000E3 */
    IL_001a:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::ModeChange

  .method /*0600022C*/ public hidebysig newslot virtual 
          instance void  MediaError(object pMediaObject) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x45a8
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000037*/ init (class AxWMPLib._WMPOCXEvents_MediaErrorEvent/*0200006A*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001E9       */ newobj     instance void AxWMPLib._WMPOCXEvents_MediaErrorEvent/*0200006A*/::.ctor(object) /* 060001E9 */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000E4       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnMediaError(object,
                                                                                                                                  class AxWMPLib._WMPOCXEvents_MediaErrorEvent/*0200006A*/) /* 060000E4 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::MediaError

  .method /*0600022D*/ public hidebysig newslot virtual 
          instance void  OpenPlaylistSwitch(object pItem) cil managed
  // SIG: 20 01 01 1C
  {
    // Method begins at RVA 0x45d0
    // Code size       26 (0x1a)
    .maxstack  3
    .locals /*11000038*/ init (class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent/*0200006C*/ V_0)
    IL_0000:  /* 03   |                  */ ldarg.1
    IL_0001:  /* 73   | (06)0001EE       */ newobj     instance void AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent/*0200006C*/::.ctor(object) /* 060001EE */
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_000d:  /* 02   |                  */ ldarg.0
    IL_000e:  /* 7B   | (04)00009E       */ ldfld      class AxWMPLib.AxWindowsMediaPlayer/*02000002*/ AxWMPLib.AxWindowsMediaPlayerEventMulticaster/*0200006D*/::parent /* 0400009E */
    IL_0013:  /* 06   |                  */ ldloc.0
    IL_0014:  /* 6F   | (06)0000E5       */ callvirt   instance void AxWMPLib.AxWindowsMediaPlayer/*02000002*/::RaiseOnOpenPlaylistSwitch(object,
                                                                                                                                          class AxWMPLib._WMPOCXEvents_OpenPlaylistSwitchEvent/*0200006C*/) /* 060000E5 */
    IL_0019:  /* 2A   |                  */ ret
  } // end of method AxWindowsMediaPlayerEventMulticaster::OpenPlaylistSwitch

} // end of class AxWMPLib.AxWindowsMediaPlayerEventMulticaster


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file AxInterop.WMPLib.res
