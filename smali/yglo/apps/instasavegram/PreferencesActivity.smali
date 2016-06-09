.class public Lyglo/apps/instasavegram/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 50
    if-nez p1, :cond_0

    .line 52
    if-ne p2, v4, :cond_0

    .line 54
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    const-string v1, "selected_dir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lyglo/apps/instasavegram/PreferencesActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v1, v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->setSavePath(Ljava/lang/String;)V

    .line 57
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lyglo/apps/instasavegram/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    const/4 v0, 0x0

    const-string v1, "pref_directory"

    invoke-virtual {p0, v0, v1}, Lyglo/apps/instasavegram/PreferencesActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 21
    const-string v0, "pref_directory"

    invoke-virtual {p0, v2, v0}, Lyglo/apps/instasavegram/PreferencesActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 23
    const-string v0, "pro"

    const-string v1, "pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "pref_filter"

    invoke-virtual {p0, v2, v0}, Lyglo/apps/instasavegram/PreferencesActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 26
    const-string v0, "pref_grid_size"

    invoke-virtual {p0, v2, v0}, Lyglo/apps/instasavegram/PreferencesActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 29
    :cond_0
    const-string v0, "pref_directory"

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 30
    new-instance v1, Lyglo/apps/instasavegram/PreferencesActivity$1;

    invoke-direct {v1, p0}, Lyglo/apps/instasavegram/PreferencesActivity$1;-><init>(Lyglo/apps/instasavegram/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 45
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 84
    const-string v0, "pref_directory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lyglo/apps/instasavegram/PreferencesActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSavePath()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p0, p2}, Lyglo/apps/instasavegram/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lyglo/apps/instasavegram/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v0, "pref_filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0, p2}, Lyglo/apps/instasavegram/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 92
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "pref_grid_size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p2}, Lyglo/apps/instasavegram/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 97
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 79
    return-void
.end method
