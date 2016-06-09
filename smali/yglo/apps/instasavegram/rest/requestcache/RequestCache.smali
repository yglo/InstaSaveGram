.class public Lyglo/apps/instasavegram/rest/requestcache/RequestCache;
.super Ljava/lang/Object;
.source "RequestCache.java"


# static fields
.field public static final CACHE_ENTRY_LIFETIME:J = 0xa4cb800L


# instance fields
.field private cacheElementSerializer:Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;)V
    .locals 6

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    .line 21
    iput-object p2, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->cacheElementSerializer:Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;

    .line 23
    const-wide v0, 0x2090b35b257c3ecaL    # 7.971765524741326E-152

    iget-object v2, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "lastSerialVersionUID"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->clearCache()V

    .line 26
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSerialVersionUID"

    sget-wide v2, Lyglo/apps/instasavegram/model/IGResponse;->serialVersionUID:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->trimCache()V

    goto :goto_0
.end method


# virtual methods
.method public addToCache(Ljava/lang/String;Lyglo/apps/instasavegram/model/IGResponse;)V
    .locals 4

    .prologue
    .line 62
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 64
    new-instance v0, Lyglo/apps/instasavegram/rest/requestcache/CacheElement;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p2, v2, v3}, Lyglo/apps/instasavegram/rest/requestcache/CacheElement;-><init>(Lyglo/apps/instasavegram/model/IGResponse;J)V

    .line 68
    :try_start_0
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->cacheElementSerializer:Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;

    invoke-interface {v1, v0}, Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;->serialize(Lyglo/apps/instasavegram/rest/requestcache/CacheElement;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearCache()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    return-void
.end method

.method public getFromCache(Ljava/lang/String;)Lyglo/apps/instasavegram/model/IGResponse;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 41
    iget-object v1, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    iget-object v2, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->cacheElementSerializer:Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;

    invoke-interface {v2, v1}, Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;->deserialize(Ljava/lang/String;)Lyglo/apps/instasavegram/rest/requestcache/CacheElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    iget-object v0, v0, Lyglo/apps/instasavegram/rest/requestcache/CacheElement;->data:Lyglo/apps/instasavegram/model/IGResponse;

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasCacheFor(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public trimCache()V
    .locals 10

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    iget-object v6, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->cacheElementSerializer:Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v1}, Lyglo/apps/instasavegram/rest/requestcache/CacheElementSerializer;->deserialize(Ljava/lang/String;)Lyglo/apps/instasavegram/rest/requestcache/CacheElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    iget-wide v6, v1, Lyglo/apps/instasavegram/rest/requestcache/CacheElement;->time:J

    const-wide/32 v8, 0xa4cb800

    add-long/2addr v6, v8

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/requestcache/RequestCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 120
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 125
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    return-void
.end method
