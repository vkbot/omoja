.class public interface abstract Lmega/car/input/ICarInputCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/ICarInputCallback$Stub;,
        Lmega/car/input/ICarInputCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
.end method

.method public abstract onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)V
.end method
