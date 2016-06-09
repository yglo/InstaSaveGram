.class public Lyglo/apps/instasavegram/model/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bio:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private profilePicture:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lyglo/apps/instasavegram/model/User;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lyglo/apps/instasavegram/model/User;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lyglo/apps/instasavegram/model/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePicture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lyglo/apps/instasavegram/model/User;->profilePicture:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lyglo/apps/instasavegram/model/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lyglo/apps/instasavegram/model/User;->id:Ljava/lang/String;

    .line 41
    return-void
.end method
