.class public Lyglo/apps/instasavegram/model/Meta;
.super Ljava/lang/Object;
.source "Meta.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:I

.field private errorMessage:Ljava/lang/String;

.field private errorType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lyglo/apps/instasavegram/model/Meta;->code:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Meta;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Meta;->errorType:Ljava/lang/String;

    return-object v0
.end method
