.class public Lyglo/apps/instasavegram/rest/service/RestServiceHelper;
.super Ljava/lang/Object;
.source "RestServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;
    }
.end annotation


# static fields
.field private static final STOP_SERVICE_DELAY:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "RestServiceHelper"


# instance fields
.field private actualRequestId:I

.field private application:Lyglo/apps/instasavegram/InstaSaveApplication;

.field private cacheKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private registeredCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private requestCache:Lyglo/apps/instasavegram/rest/requestcache/RequestCache;

.field private requestsRunningOnService:I

.field private responsesFromServiceToDeliver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/InstaSaveApplication;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->registeredCallbacksMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->responsesFromServiceToDeliver:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->cacheKeys:Ljava/util/Map;

    .line 69
    new-instance v0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;

    const-string v1, "RequestCache"

    invoke-virtual {p1, v1, v3}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Lyglo/apps/instasavegram/rest/requestcache/Base64CacheElementSerializer;

    invoke-direct {v2}, Lyglo/apps/instasavegram/rest/requestcache/Base64CacheElementSerializer;-><init>()V

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;-><init>(Landroid/content/SharedPreferences;Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestCache:Lyglo/apps/instasavegram/rest/requestcache/RequestCache;

    .line 70
    iput-object p1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->handler:Landroid/os/Handler;

    .line 74
    iput v3, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestsRunningOnService:I

    .line 75
    iput v3, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->actualRequestId:I

    .line 78
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/rest/service/RestServiceHelper;)Lyglo/apps/instasavegram/InstaSaveApplication;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    return-object v0
.end method

.method private answerToRequester(Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;)V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p2}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p2}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->getIgResponse()Lyglo/apps/instasavegram/model/IGResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;->success(Lyglo/apps/instasavegram/model/IGResponse;)V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p2}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->getError()Lyglo/apps/instasavegram/rest/service/RestServiceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;->failure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    goto :goto_0
.end method

.method private checkCache(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestCache:Lyglo/apps/instasavegram/rest/requestcache/RequestCache;

    invoke-virtual {v0, p1}, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->getFromCache(Ljava/lang/String;)Lyglo/apps/instasavegram/model/IGResponse;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 209
    invoke-interface {p2, v0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;->success(Lyglo/apps/instasavegram/model/IGResponse;)V

    .line 210
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIfRequestAlreadyRunning(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method private checkIfShouldStopService()V
    .locals 4

    .prologue
    .line 191
    iget v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestsRunningOnService:I

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$1;

    invoke-direct {v1, p0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$1;-><init>(Lyglo/apps/instasavegram/rest/service/RestServiceHelper;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    :cond_0
    return-void
.end method

.method private generateRequestId()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->actualRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->actualRequestId:I

    return v0
.end method

.method private prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    const-class v2, Lyglo/apps/instasavegram/rest/service/RestService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v1, "ARG_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "REQUEST_TYPE"

    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    return-object v0
.end method

.method private startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->generateRequestId()I

    move-result v0

    .line 139
    const-string v1, "ARG_REQUEST_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->registeredCallbacksMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->cacheKeys:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget v1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestsRunningOnService:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestsRunningOnService:I

    .line 146
    invoke-direct {p0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->stopServiceStopTimer()V

    .line 148
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v1, p1}, Lyglo/apps/instasavegram/InstaSaveApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 149
    return v0
.end method

.method private stopServiceStopTimer()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getFeed(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_FEED:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p5}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->checkCache(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 240
    :cond_0
    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_FEED:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v1, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 241
    const-string v2, "ARG_MIN_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "ARG_MAX_ID"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-direct {p0, v1, v0, p5}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public getLikedMedia(Ljava/lang/String;ZLjava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_LIKED_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p4}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->checkCache(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    .line 286
    :cond_0
    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_LIKED_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v1, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 287
    const-string v2, "ARG_MAX_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-direct {p0, v1, v0, p4}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public getMoreMedia(Ljava/lang/String;ZLjava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "https://api.instagram.com/v1/"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 295
    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p4}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->checkCache(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    .line 299
    :cond_0
    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_MORE_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v1, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 300
    const-string v2, "ARG_PATH"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-direct {p0, v1, v0, p4}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public getOwnMedia(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_OWN_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p5}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->checkCache(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    .line 271
    :cond_0
    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_OWN_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v1, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 272
    const-string v2, "ARG_MIN_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "ARG_MAX_ID"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-direct {p0, v1, v0, p5}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public getPopularMedia(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 221
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_POPULAR_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v0, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    return v0
.end method

.method public getUserInfo(Ljava/lang/String;ZLjava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Lyglo/apps/instasavegram/model/User;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_USER_INFO:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p4}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->checkCache(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    .line 313
    :cond_0
    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_USER_INFO:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v1, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 314
    const-string v2, "ARG_USER_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-direct {p0, v1, v0, p4}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public getUserRecentMedia(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_USER_RECENT_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p6}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->checkCache(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 255
    :cond_0
    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->GET_USER_RECENT_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v1, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 256
    const-string v2, "ARG_MIN_ID"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v2, "ARG_MAX_ID"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v2, "ARG_USER_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-direct {p0, v1, v0, p6}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public onEvent(Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;)V
    .locals 5

    .prologue
    .line 155
    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->getRequestId()I

    move-result v1

    .line 157
    if-ltz v1, :cond_1

    .line 160
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->registeredCallbacksMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->registeredCallbacksMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    .line 163
    invoke-direct {p0, v0, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->answerToRequester(Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;)V

    .line 164
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->registeredCallbacksMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :goto_0
    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->cacheKeys:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v2, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestCache:Lyglo/apps/instasavegram/rest/requestcache/RequestCache;

    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->cacheKeys:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->getIgResponse()Lyglo/apps/instasavegram/model/IGResponse;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->addToCache(Ljava/lang/String;Lyglo/apps/instasavegram/model/IGResponse;)V

    .line 177
    :cond_0
    :goto_1
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->cacheKeys:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    iget v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestsRunningOnService:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->requestsRunningOnService:I

    .line 181
    invoke-direct {p0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->checkIfShouldStopService()V

    .line 182
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->responsesFromServiceToDeliver:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v0

    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->getError()Lyglo/apps/instasavegram/rest/service/RestServiceError;

    move-result-object v2

    invoke-virtual {v2}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getType()Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    move-result-object v2

    invoke-virtual {v2}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->getError()Lyglo/apps/instasavegram/rest/service/RestServiceError;

    move-result-object v3

    invoke-virtual {v3}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RestServiceHelper"

    invoke-virtual {v0, v2, v3, v4}, Lyglo/apps/instasavegram/Analytics;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public registerCallback(ILyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->responsesFromServiceToDeliver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->responsesFromServiceToDeliver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;

    invoke-direct {p0, p2, v0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->answerToRequester(Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;)V

    .line 98
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->responsesFromServiceToDeliver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->registeredCallbacksMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public searchMedia(Ljava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->SEARCH_MEDIA:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v0, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    const-string v1, "ARG_SEARCH_QUERY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    return v0
.end method

.method public searchUser(Ljava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/User;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Lyglo/apps/instasavegram/rest/service/RestService$RequestType;->SEARCH_USER:Lyglo/apps/instasavegram/rest/service/RestService$RequestType;

    invoke-direct {p0, v0, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->prepareRequestIntent(Lyglo/apps/instasavegram/rest/service/RestService$RequestType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 322
    const-string v1, "ARG_SEARCH_QUERY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->startRequest(Landroid/content/Intent;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    return v0
.end method

.method public unregisterCallback(I)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->registeredCallbacksMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method
