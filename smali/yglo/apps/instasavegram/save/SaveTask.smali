.class public Lyglo/apps/instasavegram/save/SaveTask;
.super Ljava/lang/Object;
.source "SaveTask.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private localFile:Ljava/io/File;

.field private remoteUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lyglo/apps/instasavegram/save/SaveTask;->localFile:Ljava/io/File;

    .line 14
    iput-object p2, p0, Lyglo/apps/instasavegram/save/SaveTask;->remoteUrl:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 30
    instance-of v0, p1, Lyglo/apps/instasavegram/save/SaveTask;

    if-eqz v0, :cond_1

    .line 32
    check-cast p1, Lyglo/apps/instasavegram/save/SaveTask;

    .line 33
    invoke-virtual {p1}, Lyglo/apps/instasavegram/save/SaveTask;->getLocalFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveTask;->localFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lyglo/apps/instasavegram/save/SaveTask;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveTask;->remoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getLocalFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveTask;->localFile:Ljava/io/File;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveTask;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveTask;->localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveTask;->remoteUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
