/*
 * Portfile2formula2finkinfo - Converts between the different formats used by the different OS X package managers
 * Created by Eric Gallager
 * 12/18/12
 */

#import <Foundation/Foundation.h>
// #include <glib.h> // I have my glib installed by MacPorts, which is why I set my "Headers Search Path" for this Xcode project to include /opt/local/include
// Actually my glib is currently being uncooperative so I think I'm going to give up on using it for now and comment it out for now

#define STRING_MAX_LENGTH 100
#define PARAGRAPH_MAX_LENGTH 2000

// There's probably a better way to set up these pairs of keys and values but all I know is structs so I'm just going to use those
typedef struct {
	char NameFieldTitle[STRING_MAX_LENGTH]; // I originally tried using NSStrings for strings instead of arrays of characters, but that gave me error messages relating to Objective-C memory management, which I don't know yet
	char VersionFieldTitle[STRING_MAX_LENGTH];
	char LicenseFieldTitle[STRING_MAX_LENGTH];
	char DescriptionFieldTitle[STRING_MAX_LENGTH];
	char LongDescriptionFieldTitle[STRING_MAX_LENGTH];
	char HomepageFieldTitle[STRING_MAX_LENGTH];
	//GChecksumType ChecksumType; // from glib
	char InstallFieldTitle[STRING_MAX_LENGTH];
} commonDataFieldKeysInFile_t;

typedef struct {
	char Name[STRING_MAX_LENGTH];
	NSInteger Version;
	char License[STRING_MAX_LENGTH];
	char Description[STRING_MAX_LENGTH];
	char LongDescription[STRING_MAX_LENGTH][PARAGRAPH_MAX_LENGTH];
	//NSURL Homepage; //commented out until I understand Objective C memory management (TODO)
	//GChecksum Checksum; // from glib
	char Install[PARAGRAPH_MAX_LENGTH];
} commonDataFieldValuesInFile_t;

// Not exactly how this is going to work yet (still reading the glib documentation)... (TODO)
/* GKeyFile g_key_file_new(void); {
 * }
 */ //commented out for now

// Main function
int main (int argc, const char * argv[]) {
	printf("\n Message for security and/or debugging: \n ");
	printf("This program's path is %s and it is running with %i argument(s). \n", argv[0], argc); // Statement for debugging
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    // TODO: insert code here...
    NSLog(@"Hello, World!");
    [pool drain];
    return 0;
}
