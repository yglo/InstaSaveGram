.class public Lyglo/apps/instasavegram/model/Pagination;
.super Ljava/lang/Object;
.source "Pagination.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nextMaxId:Ljava/lang/String;

.field private nextUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextMaxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Pagination;->nextMaxId:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Pagination;->nextUrl:Ljava/lang/String;

    return-object v0
.end method
