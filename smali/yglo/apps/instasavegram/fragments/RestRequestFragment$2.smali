.class synthetic Lyglo/apps/instasavegram/fragments/RestRequestFragment$2;
.super Ljava/lang/Object;
.source "RestRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/fragments/RestRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$yglo$apps$instasavegram$rest$service$RestServiceError$ErrorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->values()[Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$2;->$SwitchMap$yglo$apps$instasavegram$rest$service$RestServiceError$ErrorType:[I

    :try_start_0
    sget-object v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$2;->$SwitchMap$yglo$apps$instasavegram$rest$service$RestServiceError$ErrorType:[I

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->NETWORK:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$2;->$SwitchMap$yglo$apps$instasavegram$rest$service$RestServiceError$ErrorType:[I

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->HTTP:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$2;->$SwitchMap$yglo$apps$instasavegram$rest$service$RestServiceError$ErrorType:[I

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->CONVERSION:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
