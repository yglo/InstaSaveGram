.class public Lyglo/apps/instasavegram/save/SaveServiceError;
.super Ljava/lang/Object;
.source "SaveServiceError.java"


# instance fields
.field private message:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceError;->type:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    const-string v0, "N/A"

    :cond_0
    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceError;->message:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceError;->type:Ljava/lang/String;

    return-object v0
.end method
