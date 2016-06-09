.class public Lyglo/apps/instasavegram/model/IGResponse;
.super Ljava/lang/Object;
.source "IGResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static serialVersionUID:J


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private meta:Lyglo/apps/instasavegram/model/Meta;

.field private pagination:Lyglo/apps/instasavegram/model/Pagination;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-wide v0, 0x2090b35b257c3ecaL    # 7.971765524741326E-152

    sput-wide v0, Lyglo/apps/instasavegram/model/IGResponse;->serialVersionUID:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lyglo/apps/instasavegram/model/IGResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMeta()Lyglo/apps/instasavegram/model/Meta;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lyglo/apps/instasavegram/model/IGResponse;->meta:Lyglo/apps/instasavegram/model/Meta;

    return-object v0
.end method

.method public getPagination()Lyglo/apps/instasavegram/model/Pagination;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lyglo/apps/instasavegram/model/IGResponse;->pagination:Lyglo/apps/instasavegram/model/Pagination;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lyglo/apps/instasavegram/model/IGResponse;->data:Ljava/lang/Object;

    .line 31
    return-void
.end method
