.class public final enum Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;
.super Ljava/lang/Enum;
.source "FullBackupSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/FullBackupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

.field public static final enum DISABLE:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

.field public static final enum PHOTOS_ONLY:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

.field public static final enum VIDEOS_ONLY:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->DISABLE:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    new-instance v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    const-string v1, "PHOTOS_ONLY"

    invoke-direct {v0, v1, v3}, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->PHOTOS_ONLY:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    new-instance v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    const-string v1, "VIDEOS_ONLY"

    invoke-direct {v0, v1, v4}, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->VIDEOS_ONLY:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->DISABLE:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    aput-object v1, v0, v2

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->PHOTOS_ONLY:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    aput-object v1, v0, v3

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->VIDEOS_ONLY:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    aput-object v1, v0, v4

    sput-object v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->$VALUES:[Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    return-object v0
.end method

.method public static values()[Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->$VALUES:[Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    invoke-virtual {v0}, [Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    return-object v0
.end method
