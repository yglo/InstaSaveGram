.class public Lyglo/apps/instasavegram/rest/service/RestServiceError;
.super Ljava/lang/Object;
.source "RestServiceError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;
    }
.end annotation


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private type:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->UNEXPECTED:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->type:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    .line 64
    iput-object p1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->message:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lretrofit/RetrofitError;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RetrofitError$Kind;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->message:Ljava/lang/String;

    .line 25
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$1;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 28
    :pswitch_0
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->HTTP:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->type:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/IGResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/IGResponse;->getMeta()Lyglo/apps/instasavegram/model/Meta;

    move-result-object v1

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/Meta;->getCode()I

    move-result v1

    iput v1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->code:I

    .line 43
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/IGResponse;->getMeta()Lyglo/apps/instasavegram/model/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Meta;->getErrorType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->message:Ljava/lang/String;

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->code:I

    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->CONVERSION:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->type:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->NETWORK:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->type:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->UNEXPECTED:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->type:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceError;->type:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    return-object v0
.end method
