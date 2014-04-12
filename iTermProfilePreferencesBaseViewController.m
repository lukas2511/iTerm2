//
//  iTermProfilePreferencesBaseViewController.m
//  iTerm
//
//  Created by George Nachman on 4/10/14.
//
//

#import "iTermProfilePreferencesBaseViewController.h"
#import "iTermProfilePreferences.h"

@implementation iTermProfilePreferencesBaseViewController

- (BOOL)boolForKey:(NSString *)key {
    Profile *profile = [_delegate profilePreferencesCurrentProfile];
    return [iTermProfilePreferences boolForKey:key inProfile:profile];
}

- (void)setBool:(BOOL)value forKey:(NSString *)key {
    Profile *profile = [_delegate profilePreferencesCurrentProfile];
    ProfileModel *model = [_delegate profilePreferencesCurrentModel];
    [iTermProfilePreferences setBool:value forKey:key inProfile:profile model:model];
}

- (int)intForKey:(NSString *)key {
    Profile *profile = [_delegate profilePreferencesCurrentProfile];
    return [iTermProfilePreferences intForKey:key inProfile:profile];
}

- (void)setInt:(int)value forKey:(NSString *)key {
    Profile *profile = [_delegate profilePreferencesCurrentProfile];
    ProfileModel *model = [_delegate profilePreferencesCurrentModel];
    [iTermProfilePreferences setInt:value forKey:key inProfile:profile model:model];
}

- (double)floatForKey:(NSString *)key {
    Profile *profile = [_delegate profilePreferencesCurrentProfile];
    return [iTermProfilePreferences floatForKey:key inProfile:profile];
}

- (void)setFloat:(double)value forKey:(NSString *)key {
    Profile *profile = [_delegate profilePreferencesCurrentProfile];
    ProfileModel *model = [_delegate profilePreferencesCurrentModel];
    [iTermProfilePreferences setFloat:value forKey:key inProfile:profile model:model];
}

- (NSString *)stringForKey:(NSString *)key {
    Profile *profile = [_delegate profilePreferencesCurrentProfile];
    return [iTermProfilePreferences stringForKey:key inProfile:profile];
}

- (void)setString:(NSString *)value forKey:(NSString *)key {
    Profile *profile = [_delegate profilePreferencesCurrentProfile];
    ProfileModel *model = [_delegate profilePreferencesCurrentModel];
    [iTermProfilePreferences setString:value forKey:key inProfile:profile model:model];
}

- (BOOL)keyHasDefaultValue:(NSString *)key {
    return [iTermProfilePreferences keyHasDefaultValue:key];
}

- (void)reloadProfile {
    for (NSControl *control in self.keyMap) {
        PreferenceInfo *info = [self infoForControl:control];
        [self updateValueForInfo:info];
    }
}

@end
