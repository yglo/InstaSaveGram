.class public interface abstract Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;
.super Ljava/lang/Object;
.source "RestServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/rest/service/RestServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RestServiceHelperCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract failure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
.end method

.method public abstract success(Lyglo/apps/instasavegram/model/IGResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<TT;>;)V"
        }
    .end annotation
.end method
