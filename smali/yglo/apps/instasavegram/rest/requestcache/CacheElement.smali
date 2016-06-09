.class public Lyglo/apps/instasavegram/rest/requestcache/CacheElement;
.super Ljava/lang/Object;
.source "CacheElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x2090b35b257c3ecaL


# instance fields
.field public data:Lyglo/apps/instasavegram/model/IGResponse;

.field public time:J


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/model/IGResponse;J)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lyglo/apps/instasavegram/rest/requestcache/CacheElement;->data:Lyglo/apps/instasavegram/model/IGResponse;

    .line 17
    iput-wide p2, p0, Lyglo/apps/instasavegram/rest/requestcache/CacheElement;->time:J

    .line 18
    return-void
.end method
