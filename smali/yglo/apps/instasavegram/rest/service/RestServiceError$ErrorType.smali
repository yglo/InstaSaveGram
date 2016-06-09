.class public final enum Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;
.super Ljava/lang/Enum;
.source "RestServiceError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/rest/service/RestServiceError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

.field public static final enum CONVERSION:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

.field public static final enum HTTP:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

.field public static final enum NETWORK:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

.field public static final enum UNEXPECTED:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->NETWORK:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    .line 11
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    const-string v1, "CONVERSION"

    invoke-direct {v0, v1, v3}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->CONVERSION:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    .line 12
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v4}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->HTTP:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    .line 13
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    const-string v1, "UNEXPECTED"

    invoke-direct {v0, v1, v5}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->UNEXPECTED:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->NETWORK:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->CONVERSION:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->HTTP:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->UNEXPECTED:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->$VALUES:[Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    return-object v0
.end method

.method public static values()[Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->$VALUES:[Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    invoke-virtual {v0}, [Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    return-object v0
.end method
