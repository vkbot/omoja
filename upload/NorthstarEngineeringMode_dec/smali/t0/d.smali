.class public final synthetic Lt0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/d;->a:Ljava/lang/String;

    iput p2, p0, Lt0/d;->b:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/preference/PreferenceDataStore;

    sget-object v0, Lcom/mega/carsettings/car/CarPreferenceStore;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lt0/d;->a:Ljava/lang/String;

    iget p0, p0, Lt0/d;->b:F

    invoke-virtual {p1, v0, p0}, Landroidx/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    return-void
.end method
