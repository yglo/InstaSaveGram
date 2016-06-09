.class public Lyglo/apps/instasavegram/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# instance fields
.field private gaTracker:Lcom/google/android/gms/analytics/Tracker;

.field private googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/Analytics;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 18
    iget-object v0, p0, Lyglo/apps/instasavegram/Analytics;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/Analytics;->gaTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 19
    iget-object v0, p0, Lyglo/apps/instasavegram/Analytics;->gaTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public reportActivityStart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lyglo/apps/instasavegram/Analytics;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 25
    return-void
.end method

.method public reportActivityStop(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lyglo/apps/instasavegram/Analytics;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public reportCaughtException(Ljava/lang/Exception;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, ""

    const-string v2, ""

    .line 47
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    move v0, v1

    .line 54
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 56
    aget-object v5, v4, v0

    .line 57
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "yglo.apps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    .line 60
    if-eqz v6, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".java"

    const-string v4, ""

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v3

    .line 74
    :goto_2
    iget-object v3, p0, Lyglo/apps/instasavegram/Analytics;->gaTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 75
    return-void

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const-string v2, "Exception is null"

    .line 71
    const-string v0, "Analytics.reportCaughtException"

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lyglo/apps/instasavegram/Analytics;->gaTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method public reportScreenView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lyglo/apps/instasavegram/Analytics;->gaTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lyglo/apps/instasavegram/Analytics;->gaTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 36
    return-void
.end method
