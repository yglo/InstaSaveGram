.class public final Lcom/google/android/gms/internal/zzom;
.super Lcom/google/android/gms/internal/zzod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzod",
        "<",
        "Lcom/google/android/gms/internal/zzom;",
        ">;"
    }
.end annotation


# instance fields
.field private zzUc:Ljava/lang/String;

.field public zzaIA:I

.field public zzaIB:I

.field public zzaIC:I

.field public zzzQ:I

.field public zzzR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzom;->zzUc:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzom;->zzUc:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzom;->zzUc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzom;->zzaIA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzom;->zzzQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzom;->zzzR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzom;->zzaIB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzom;->zzaIC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzom;->zzA(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzod;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzom;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzom;->zza(Lcom/google/android/gms/internal/zzom;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzom;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIA:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIA:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzom;->zzhN(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzzQ:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzzQ:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzom;->zzhO(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzzR:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzzR:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzom;->zzhP(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIB:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIB:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzom;->zzhQ(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIC:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIC:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzom;->zzhR(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzom;->zzUc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzom;->zzUc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzom;->setLanguage(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public zzhN(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzom;->zzaIA:I

    return-void
.end method

.method public zzhO(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzom;->zzzQ:I

    return-void
.end method

.method public zzhP(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzom;->zzzR:I

    return-void
.end method

.method public zzhQ(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzom;->zzaIB:I

    return-void
.end method

.method public zzhR(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzom;->zzaIC:I

    return-void
.end method

.method public zzxH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIA:I

    return v0
.end method

.method public zzxI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzzQ:I

    return v0
.end method

.method public zzxJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzzR:I

    return v0
.end method

.method public zzxK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIB:I

    return v0
.end method

.method public zzxL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzom;->zzaIC:I

    return v0
.end method
