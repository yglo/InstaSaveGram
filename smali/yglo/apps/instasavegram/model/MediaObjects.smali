.class public Lyglo/apps/instasavegram/model/MediaObjects;
.super Ljava/lang/Object;
.source "MediaObjects.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lowResolution:Lyglo/apps/instasavegram/model/MediaObject;

.field private standardResolution:Lyglo/apps/instasavegram/model/MediaObject;

.field private thumbnail:Lyglo/apps/instasavegram/model/MediaObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowResolution()Lyglo/apps/instasavegram/model/MediaObject;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lyglo/apps/instasavegram/model/MediaObjects;->lowResolution:Lyglo/apps/instasavegram/model/MediaObject;

    return-object v0
.end method

.method public getStandardResolution()Lyglo/apps/instasavegram/model/MediaObject;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lyglo/apps/instasavegram/model/MediaObjects;->standardResolution:Lyglo/apps/instasavegram/model/MediaObject;

    return-object v0
.end method

.method public getThumbnail()Lyglo/apps/instasavegram/model/MediaObject;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lyglo/apps/instasavegram/model/MediaObjects;->thumbnail:Lyglo/apps/instasavegram/model/MediaObject;

    return-object v0
.end method
