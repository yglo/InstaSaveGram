.class public Lyglo/apps/instasavegram/model/Caption;
.super Ljava/lang/Object;
.source "Caption.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lyglo/apps/instasavegram/model/Caption;->text:Ljava/lang/String;

    return-object v0
.end method
