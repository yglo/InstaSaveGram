.class public Lyglo/apps/instasavegram/rest/service/RestService;
.super Landroid/app/Service;
.source "RestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;,
        Lyglo/apps/instasavegram/rest/service/RestService$RequestType;
    }
.end annotation


# static fields
.field public static final ARG_ACCESS_TOKEN:Ljava/lang/String; = "ARG_ACCESS_TOKEN"

.field public static final ARG_MAX_ID:Ljava/lang/String; = "ARG_MAX_ID"

.field public static final ARG_MIN_ID:Ljava/lang/String; = "ARG_MIN_ID"

.field public static final ARG_PATH:Ljava/lang/String; = "ARG_PATH"

.field public static final ARG_REQUEST_ID:Ljava/lang/String; = "ARG_REQUEST_ID"

.field public static final ARG_REQUEST_TYPE:Ljava/lang/String; = "REQUEST_TYPE"

.field public static final ARG_SEARCH_QUERY:Ljava/lang/String; = "ARG_SEARCH_QUERY"

.field public static final ARG_USER_ID:Ljava/lang/String; = "ARG_USER_ID"

.field private static final TAG:Ljava/lang/String; = "RestService"


# instance fields
.field protected restClient:Lyglo/apps/instasavegram/rest/RestClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 223
    return-void
.end method

.method private getFeed(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 147
    const-string v0, "ARG_MAX_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "ARG_MIN_ID"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v2}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v2

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v3

    invoke-interface {v2, p2, v1, v0, v3}, Lyglo/apps/instasavegram/rest/InstagramAPI;->getFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 150
    return-void
.end method

.method private getLikedMedia(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 172
    const-string v0, "ARG_MAX_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v1

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v2

    invoke-interface {v1, p2, v0, v2}, Lyglo/apps/instasavegram/rest/InstagramAPI;->getLikedMedia(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 174
    return-void
.end method

.method private getMoreMedia(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 178
    const-string v0, "ARG_PATH"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 180
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v1

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lyglo/apps/instasavegram/rest/InstagramAPI;->getMoreMedia(Ljava/lang/String;Lretrofit/Callback;)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v2, "BadArguments@RestService"

    invoke-direct {v1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0
.end method

.method private getOwnMedia(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 165
    const-string v0, "ARG_MAX_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "ARG_MIN_ID"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v2}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v2

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v3

    invoke-interface {v2, p2, v1, v0, v3}, Lyglo/apps/instasavegram/rest/InstagramAPI;->getOwnMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 168
    return-void
.end method

.method private getPopularMedia(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v0

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lyglo/apps/instasavegram/rest/InstagramAPI;->getPopularMedia(Ljava/lang/String;Lretrofit/Callback;)V

    .line 134
    return-void
.end method

.method private getUserInfo(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 187
    const-string v0, "ARG_USER_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v1

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v2

    invoke-interface {v1, p2, v0, v2}, Lyglo/apps/instasavegram/rest/InstagramAPI;->getUserInfo(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v2, "BadArguments@RestService"

    invoke-direct {v1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0
.end method

.method private getUserRecentMedia(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 154
    const-string v0, "ARG_USER_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v0, "ARG_MAX_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    const-string v0, "ARG_MIN_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v0

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v5

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lyglo/apps/instasavegram/rest/InstagramAPI;->getUserRecentMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v2, "BadArguments@RestService"

    invoke-direct {v1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0
.end method

.method private searchMedia(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 138
    const-string v0, "ARG_SEARCH_QUERY"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v1

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v2

    invoke-interface {v1, p2, v0, v2}, Lyglo/apps/instasavegram/rest/InstagramAPI;->searchMedia(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v2, "BadArguments@RestService"

    invoke-direct {v1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0
.end method

.method private searchUser(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 196
    const-string v0, "ARG_SEARCH_QUERY"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 198
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/RestClient;->getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;

    move-result-object v1

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService;->getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    move-result-object v2

    invoke-interface {v1, p2, v0, v2}, Lyglo/apps/instasavegram/rest/InstagramAPI;->searchUser(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v2, "BadArguments@RestService"

    invoke-direct {v1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0
.end method


# virtual methods
.method protected getRetrofitCallback(I)Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;

    invoke-direct {v0, p0, p1}, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;-><init>(Lyglo/apps/instasavegram/rest/service/RestService;I)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    new-instance v0, Lyglo/apps/instasavegram/rest/RestClient;

    invoke-direct {v0}, Lyglo/apps/instasavegram/rest/RestClient;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestService;->restClient:Lyglo/apps/instasavegram/rest/RestClient;

    .line 52
    const-string v0, "RestService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 208
    const-string v0, "RestService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 58
    const-string v0, "RestService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v1, "NullIntent@RestService"

    invoke-direct {v0, v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    .line 128
    :goto_0
    return v6

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v1, "NoArguments@RestService"

    invoke-direct {v0, v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "REQUEST_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 74
    const-string v2, "ARG_REQUEST_ID"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 75
    const-string v3, "ARG_ACCESS_TOKEN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    if-gez v2, :cond_2

    .line 79
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v1, "BadRequestId@RestService"

    invoke-direct {v0, v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v5, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0

    .line 82
    :cond_2
    if-ltz v1, :cond_3

    invoke-static {}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->values()[Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    move-result-object v4

    array-length v4, v4

    if-lt v1, v4, :cond_4

    .line 84
    :cond_3
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v1, "BadRequest@RestService"

    invoke-direct {v0, v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v5, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0

    .line 87
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_6

    .line 89
    :cond_5
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    const-string v1, "BadAccessToken@RestService"

    invoke-direct {v0, v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v5, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0

    .line 93
    :cond_6
    invoke-static {}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->values()[Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    move-result-object v4

    aget-object v1, v4, v1

    .line 95
    sget-object v4, Lyglo/apps/instasavegram/rest/service/RestService$1;->$SwitchMap$yglo$apps$instasavegram$rest$service$RestService$RequestType:[I

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lyglo/apps/instasavegram/rest/service/RestService;->getPopularMedia(ILjava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0, v2, v3, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->searchMedia(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-direct {p0, v2, v3, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->getFeed(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 107
    :pswitch_3
    invoke-direct {p0, v2, v3, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->getUserRecentMedia(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 110
    :pswitch_4
    invoke-direct {p0, v2, v3, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->getOwnMedia(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 113
    :pswitch_5
    invoke-direct {p0, v2, v3, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->getLikedMedia(ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 116
    :pswitch_6
    invoke-direct {p0, v2, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->getMoreMedia(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 119
    :pswitch_7
    invoke-direct {p0, v2, v3, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->getUserInfo(ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 122
    :pswitch_8
    invoke-direct {p0, v2, v3, v0}, Lyglo/apps/instasavegram/rest/service/RestService;->searchUser(ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;

    invoke-direct {v0, p1, p2, p3}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;-><init>(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    .line 220
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 221
    return-void
.end method
