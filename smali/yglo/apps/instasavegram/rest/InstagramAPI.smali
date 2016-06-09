.class public interface abstract Lyglo/apps/instasavegram/rest/InstagramAPI;
.super Ljava/lang/Object;
.source "InstagramAPI.java"


# virtual methods
.method public abstract getFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "min_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "max_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/users/self/feed"
    .end annotation
.end method

.method public abstract getLikedMedia(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "max_like_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/users/self/media/liked"
    .end annotation
.end method

.method public abstract getMoreMedia(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            encode = false
            value = "path"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/{path}"
    .end annotation
.end method

.method public abstract getOwnMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "min_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "max_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/users/self/media/recent"
    .end annotation
.end method

.method public abstract getPopularMedia(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/media/popular"
    .end annotation
.end method

.method public abstract getUserInfo(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "user-id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Lyglo/apps/instasavegram/model/User;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/users/{user-id}"
    .end annotation
.end method

.method public abstract getUserRecentMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "user-id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "min_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "max_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/users/{user-id}/media/recent"
    .end annotation
.end method

.method public abstract searchMedia(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "tag-name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/tags/{tag-name}/media/recent"
    .end annotation
.end method

.method public abstract searchUser(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/User;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/users/search"
    .end annotation
.end method
