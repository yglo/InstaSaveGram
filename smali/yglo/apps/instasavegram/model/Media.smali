.class public Lyglo/apps/instasavegram/model/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private caption:Lyglo/apps/instasavegram/model/Caption;

.field private createdTime:J

.field private id:Ljava/lang/String;

.field private images:Lyglo/apps/instasavegram/model/MediaObjects;

.field private type:Ljava/lang/String;

.field private user:Lyglo/apps/instasavegram/model/User;

.field private videos:Lyglo/apps/instasavegram/model/MediaObjects;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaption()Lyglo/apps/instasavegram/model/Caption;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Media;->caption:Lyglo/apps/instasavegram/model/Caption;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lyglo/apps/instasavegram/model/Media;->createdTime:J

    return-wide v0
.end method

.method public getImages()Lyglo/apps/instasavegram/model/MediaObjects;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Media;->images:Lyglo/apps/instasavegram/model/MediaObjects;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Media;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Media;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lyglo/apps/instasavegram/model/User;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Media;->user:Lyglo/apps/instasavegram/model/User;

    return-object v0
.end method

.method public getVideos()Lyglo/apps/instasavegram/model/MediaObjects;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Media;->videos:Lyglo/apps/instasavegram/model/MediaObjects;

    return-object v0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Media;->type:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Media;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
