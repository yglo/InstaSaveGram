.class public final enum Lyglo/apps/instasavegram/rest/service/RestService$RequestType;
.super Ljava/lang/Enum;
.source "RestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/rest/service/RestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyglo/apps/instasavegram/rest/service/RestService$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum GET_FEED:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum GET_LIKED_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum GET_MORE_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum GET_OWN_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum GET_POPULAR_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum GET_USER_INFO:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum GET_USER_RECENT_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum SEARCH_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

.field public static final enum SEARCH_USER:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "GET_POPULAR_MEDIA"

    invoke-direct {v0, v1, v3}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_POPULAR_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "SEARCH_MEDIA"

    invoke-direct {v0, v1, v4}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->SEARCH_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "GET_FEED"

    invoke-direct {v0, v1, v5}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_FEED:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    .line 34
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "GET_USER_RECENT_MEDIA"

    invoke-direct {v0, v1, v6}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_USER_RECENT_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "GET_OWN_MEDIA"

    invoke-direct {v0, v1, v7}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_OWN_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "GET_LIKED_MEDIA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_LIKED_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    .line 35
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "GET_MORE_MEDIA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_MORE_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "GET_USER_INFO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_USER_INFO:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    const-string v1, "SEARCH_USER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->SEARCH_USER:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_POPULAR_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->SEARCH_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_FEED:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_USER_RECENT_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_OWN_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_LIKED_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_MORE_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_USER_INFO:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->SEARCH_USER:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->$VALUES:[Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyglo/apps/instasavegram/rest/service/RestService$RequestType;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    return-object v0
.end method

.method public static values()[Lyglo/apps/instasavegram/rest/service/RestService$RequestType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->$VALUES:[Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-virtual {v0}, [Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    return-object v0
.end method
