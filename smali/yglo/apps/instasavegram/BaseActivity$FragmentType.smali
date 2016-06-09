.class public final enum Lyglo/apps/instasavegram/BaseActivity$FragmentType;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyglo/apps/instasavegram/BaseActivity$FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field public static final enum FEED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field public static final enum LIKED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field public static final enum LOGIN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field public static final enum OWN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field public static final enum PRO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field public static final enum SEARCH:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field public static final enum USER_INFO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field public static final enum VIEW_BIG:Lyglo/apps/instasavegram/BaseActivity$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v3}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->FEED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    new-instance v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    const-string v1, "OWN"

    invoke-direct {v0, v1, v4}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->OWN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    new-instance v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    const-string v1, "LIKED"

    invoke-direct {v0, v1, v5}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->LIKED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    new-instance v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v6}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->SEARCH:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    new-instance v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v7}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->LOGIN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    new-instance v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    const-string v1, "PRO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->PRO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    new-instance v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    const-string v1, "USER_INFO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->USER_INFO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    new-instance v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    const-string v1, "VIEW_BIG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->VIEW_BIG:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    sget-object v1, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->FEED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->OWN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    aput-object v1, v0, v4

    sget-object v1, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->LIKED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    aput-object v1, v0, v5

    sget-object v1, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->SEARCH:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    aput-object v1, v0, v6

    sget-object v1, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->LOGIN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->PRO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->USER_INFO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->VIEW_BIG:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    aput-object v2, v0, v1

    sput-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->$VALUES:[Lyglo/apps/instasavegram/BaseActivity$FragmentType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyglo/apps/instasavegram/BaseActivity$FragmentType;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    return-object v0
.end method

.method public static values()[Lyglo/apps/instasavegram/BaseActivity$FragmentType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->$VALUES:[Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {v0}, [Lyglo/apps/instasavegram/BaseActivity$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    return-object v0
.end method
