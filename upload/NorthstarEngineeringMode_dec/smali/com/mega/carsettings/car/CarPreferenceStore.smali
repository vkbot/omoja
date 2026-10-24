.class public Lcom/mega/carsettings/car/CarPreferenceStore;
.super Landroidx/preference/PreferenceDataStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carsettings/car/CarPreferenceStore$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Boolean;

.field public static final d:Lcom/mega/carsettings/car/CarPreferenceStore;


# instance fields
.field public final a:Lcom/mega/carsettings/car/a;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/mega/carsettings/car/CarPreferenceStore;->c:Ljava/lang/Boolean;

    new-instance v0, Lcom/mega/carsettings/car/CarPreferenceStore;

    invoke-direct {v0}, Lcom/mega/carsettings/car/CarPreferenceStore;-><init>()V

    sput-object v0, Lcom/mega/carsettings/car/CarPreferenceStore;->d:Lcom/mega/carsettings/car/CarPreferenceStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/carsettings/car/CarPreferenceStore;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/mega/carsettings/car/a;->b:Lcom/mega/carsettings/car/a;

    iput-object v0, p0, Lcom/mega/carsettings/car/CarPreferenceStore;->a:Lcom/mega/carsettings/car/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/mega/carsettings/car/CarPreferenceStore$a;
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/mega/carsettings/car/CarPreferenceStore;->a:Lcom/mega/carsettings/car/a;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/mega/carsettings/car/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/carsettings/car/CarPreferenceStore$a;

    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mega/carsettings/car/a;->a()V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/car/CarPreferenceStore;->a(Ljava/lang/String;)Lcom/mega/carsettings/car/CarPreferenceStore$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "notFound:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    return p2
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/car/CarPreferenceStore;->a(Ljava/lang/String;)Lcom/mega/carsettings/car/CarPreferenceStore$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "notFound:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/car/CarPreferenceStore;->a(Ljava/lang/String;)Lcom/mega/carsettings/car/CarPreferenceStore$a;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->a()Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getInt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    return p2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "notFound:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    return p2
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/car/CarPreferenceStore;->a(Ljava/lang/String;)Lcom/mega/carsettings/car/CarPreferenceStore$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->b()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notFound:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/mega/carsettings/car/CarPreferenceStore;->b:Ljava/util/ArrayList;

    new-instance v0, Lt0/e;

    invoke-direct {v0, p1, p2}, Lt0/e;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final putFloat(Ljava/lang/String;F)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/car/CarPreferenceStore;->a(Ljava/lang/String;)Lcom/mega/carsettings/car/CarPreferenceStore$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->b()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notFound:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/mega/carsettings/car/CarPreferenceStore;->b:Ljava/util/ArrayList;

    new-instance v0, Lt0/d;

    invoke-direct {v0, p1, p2}, Lt0/d;-><init>(Ljava/lang/String;F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/car/CarPreferenceStore;->a(Ljava/lang/String;)Lcom/mega/carsettings/car/CarPreferenceStore$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->b()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notFound:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/mega/carsettings/car/CarPreferenceStore;->b:Ljava/util/ArrayList;

    new-instance v0, Lt0/f;

    invoke-direct {v0, p1, p2}, Lt0/f;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
