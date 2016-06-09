.class public Lyglo/apps/instasavegram/FullBackupSettings;
.super Ljava/lang/Object;
.source "FullBackupSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;,
        Lyglo/apps/instasavegram/FullBackupSettings$Type;
    }
.end annotation


# instance fields
.field public contentFilter:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

.field public type:Lyglo/apps/instasavegram/FullBackupSettings$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN_AND_LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    iput-object v0, p0, Lyglo/apps/instasavegram/FullBackupSettings;->type:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    .line 11
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->DISABLE:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    iput-object v0, p0, Lyglo/apps/instasavegram/FullBackupSettings;->contentFilter:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    .line 12
    return-void
.end method
