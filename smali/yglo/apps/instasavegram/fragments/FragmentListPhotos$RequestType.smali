.class public final enum Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
.super Ljava/lang/Enum;
.source "FragmentListPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/fragments/FragmentListPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field public static final enum CUSTOM_USER:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field public static final enum FEED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field public static final enum LIKED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field public static final enum MORE:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field public static final enum OWN:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field public static final enum POPULAR:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field public static final enum SEARCH:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;


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
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v3}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->FEED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const-string v1, "OWN"

    invoke-direct {v0, v1, v4}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->OWN:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const-string v1, "LIKED"

    invoke-direct {v0, v1, v5}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->LIKED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const-string v1, "POPULAR"

    invoke-direct {v0, v1, v6}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->POPULAR:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const-string v1, "MORE"

    invoke-direct {v0, v1, v7}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->MORE:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const-string v1, "CUSTOM_USER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->CUSTOM_USER:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const-string v1, "SEARCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->SEARCH:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    sget-object v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->FEED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->OWN:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->LIKED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->POPULAR:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->MORE:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->CUSTOM_USER:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->SEARCH:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->$VALUES:[Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    return-object v0
.end method

.method public static values()[Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->$VALUES:[Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v0}, [Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    return-object v0
.end method
