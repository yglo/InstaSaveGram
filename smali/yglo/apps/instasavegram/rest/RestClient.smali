.class public Lyglo/apps/instasavegram/rest/RestClient;
.super Ljava/lang/Object;
.source "RestClient.java"


# static fields
.field private static final AUTH_URL:Ljava/lang/String; = "https://api.instagram.com/oauth/authorize/"

.field public static final AUTH_URL_STRING:Ljava/lang/String; = "https://api.instagram.com/oauth/authorize/?client_id=&redirect_uri=http://instagram.com&response_type=token"

.field public static final BASE_URL:Ljava/lang/String; = "https://api.instagram.com/v1/"

.field public static final CALLBACK_URL:Ljava/lang/String; = "http://instagram.com"

.field private static final CLIENT_ID:Ljava/lang/String; = ""


# instance fields
.field private instagramAPI:Lyglo/apps/instasavegram/rest/InstagramAPI;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 27
    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v2, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    .line 28
    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    const-string v2, "https://api.instagram.com/v1/"

    .line 29
    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    new-instance v2, Lretrofit/converter/GsonConverter;

    invoke-direct {v2, v0}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    .line 30
    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 33
    const-class v1, Lyglo/apps/instasavegram/rest/InstagramAPI;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/rest/InstagramAPI;

    iput-object v0, p0, Lyglo/apps/instasavegram/rest/RestClient;->instagramAPI:Lyglo/apps/instasavegram/rest/InstagramAPI;

    .line 34
    return-void
.end method


# virtual methods
.method public getInstagramAPI()Lyglo/apps/instasavegram/rest/InstagramAPI;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/RestClient;->instagramAPI:Lyglo/apps/instasavegram/rest/InstagramAPI;

    return-object v0
.end method
