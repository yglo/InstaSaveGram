.class public Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;
.super Ljava/lang/Object;
.source "SaveServiceServiceHelperEvent.java"


# instance fields
.field private saveServiceError:Lyglo/apps/instasavegram/save/SaveServiceError;

.field private saveTask:Lyglo/apps/instasavegram/save/SaveTask;


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/save/SaveTask;Lyglo/apps/instasavegram/save/SaveServiceError;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->saveServiceError:Lyglo/apps/instasavegram/save/SaveServiceError;

    .line 14
    iput-object p1, p0, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->saveTask:Lyglo/apps/instasavegram/save/SaveTask;

    .line 15
    return-void
.end method


# virtual methods
.method public getSaveServiceError()Lyglo/apps/instasavegram/save/SaveServiceError;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->saveServiceError:Lyglo/apps/instasavegram/save/SaveServiceError;

    return-object v0
.end method

.method public getSaveTask()Lyglo/apps/instasavegram/save/SaveTask;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->saveTask:Lyglo/apps/instasavegram/save/SaveTask;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->saveServiceError:Lyglo/apps/instasavegram/save/SaveServiceError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
