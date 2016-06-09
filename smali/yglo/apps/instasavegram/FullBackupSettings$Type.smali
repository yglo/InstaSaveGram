.class public final enum Lyglo/apps/instasavegram/FullBackupSettings$Type;
.super Ljava/lang/Enum;
.source "FullBackupSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/FullBackupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyglo/apps/instasavegram/FullBackupSettings$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyglo/apps/instasavegram/FullBackupSettings$Type;

.field public static final enum LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

.field public static final enum OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

.field public static final enum OWN_AND_LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;

    const-string v1, "OWN"

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/FullBackupSettings$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    new-instance v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;

    const-string v1, "LIKES"

    invoke-direct {v0, v1, v3}, Lyglo/apps/instasavegram/FullBackupSettings$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    new-instance v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;

    const-string v1, "OWN_AND_LIKES"

    invoke-direct {v0, v1, v4}, Lyglo/apps/instasavegram/FullBackupSettings$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN_AND_LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lyglo/apps/instasavegram/FullBackupSettings$Type;

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    aput-object v1, v0, v2

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    aput-object v1, v0, v3

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN_AND_LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    aput-object v1, v0, v4

    sput-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->$VALUES:[Lyglo/apps/instasavegram/FullBackupSettings$Type;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyglo/apps/instasavegram/FullBackupSettings$Type;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;

    return-object v0
.end method

.method public static values()[Lyglo/apps/instasavegram/FullBackupSettings$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->$VALUES:[Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {v0}, [Lyglo/apps/instasavegram/FullBackupSettings$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyglo/apps/instasavegram/FullBackupSettings$Type;

    return-object v0
.end method
