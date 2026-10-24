.class public final synthetic Lt0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/f;->a:Ljava/lang/String;

    iput p2, p0, Lt0/f;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/preference/PreferenceDataStore;

    sget-object v0, Lcom/mega/carsettings/car/CarPreferenceStore;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lt0/f;->a:Ljava/lang/String;

    iget p0, p0, Lt0/f;->b:I

    invoke-virtual {p1, v0, p0}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    return-void
.end method
