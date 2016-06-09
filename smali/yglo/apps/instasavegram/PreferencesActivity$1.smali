.class Lyglo/apps/instasavegram/PreferencesActivity$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/PreferencesActivity;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lyglo/apps/instasavegram/PreferencesActivity$1;->this$0:Lyglo/apps/instasavegram/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 35
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lyglo/apps/instasavegram/PreferencesActivity$1;->this$0:Lyglo/apps/instasavegram/PreferencesActivity;

    const-class v2, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v0, "directory_name"

    const-string v2, "InstaSaveGram"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v0, p0, Lyglo/apps/instasavegram/PreferencesActivity$1;->this$0:Lyglo/apps/instasavegram/PreferencesActivity;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/PreferencesActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSavePath()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v2, "start_directory"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v0, p0, Lyglo/apps/instasavegram/PreferencesActivity$1;->this$0:Lyglo/apps/instasavegram/PreferencesActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyglo/apps/instasavegram/PreferencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method
