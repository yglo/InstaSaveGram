.class public Lyglo/apps/instasavegram/InstaSaveApplication;
.super Landroid/app/Application;
.source "InstaSaveApplication.java"


# static fields
.field private static final ACCESS_TOKEN_PREF:Ljava/lang/String; = "accessToken"

.field public static final ETC_FOLDER:Ljava/lang/String; = "etc"

.field public static final FAVS_FOLDER:Ljava/lang/String; = "likes"

.field public static final FEED_FOLDER:Ljava/lang/String; = "feed"

.field public static final FOLDER:Ljava/lang/String; = "InstaSaveGram"

.field public static final OWN_FOLDER:Ljava/lang/String; = "own"

.field private static final PATH_PREF:Ljava/lang/String; = "path"


# instance fields
.field private analytics:Lyglo/apps/instasavegram/Analytics;

.field private preferences:Landroid/content/SharedPreferences;

.field private restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

.field private saveServiceHelper:Lyglo/apps/instasavegram/save/SaveServiceHelper;

.field private typefaceManager:Lyglo/apps/instasavegram/TypefaceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getFolderFromRequestType(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->OWN:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "own"

    .line 67
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->LIKED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "likes"

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->POPULAR:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "etc"

    goto :goto_0

    .line 64
    :cond_2
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->FEED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    const-string v0, "feed"

    goto :goto_0

    .line 67
    :cond_3
    const-string v0, "etc"

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "accessToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnalytics()Lyglo/apps/instasavegram/Analytics;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->analytics:Lyglo/apps/instasavegram/Analytics;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getRestServiceHelper()Lyglo/apps/instasavegram/rest/service/RestServiceHelper;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaveServiceHelper()Lyglo/apps/instasavegram/save/SaveServiceHelper;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->saveServiceHelper:Lyglo/apps/instasavegram/save/SaveServiceHelper;

    return-object v0
.end method

.method public getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->typefaceManager:Lyglo/apps/instasavegram/TypefaceManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    invoke-direct {v0, p0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;-><init>(Lyglo/apps/instasavegram/InstaSaveApplication;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    .line 35
    new-instance v0, Lyglo/apps/instasavegram/save/SaveServiceHelper;

    invoke-direct {v0, p0}, Lyglo/apps/instasavegram/save/SaveServiceHelper;-><init>(Lyglo/apps/instasavegram/InstaSaveApplication;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->saveServiceHelper:Lyglo/apps/instasavegram/save/SaveServiceHelper;

    .line 36
    new-instance v0, Lyglo/apps/instasavegram/TypefaceManager;

    invoke-direct {v0, p0}, Lyglo/apps/instasavegram/TypefaceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->typefaceManager:Lyglo/apps/instasavegram/TypefaceManager;

    .line 37
    new-instance v0, Lyglo/apps/instasavegram/Analytics;

    invoke-direct {v0, p0}, Lyglo/apps/instasavegram/Analytics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->analytics:Lyglo/apps/instasavegram/Analytics;

    .line 38
    invoke-virtual {p0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    .line 40
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "InstaSaveGram"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "path"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 52
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "startUps"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 53
    iget-object v1, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "startUps"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lyglo/apps/instasavegram/InstaSaveApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "path"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    return-void
.end method
