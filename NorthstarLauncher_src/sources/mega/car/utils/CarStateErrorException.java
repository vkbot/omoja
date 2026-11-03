package mega.car.utils;

/* JADX INFO: loaded from: classes2.dex */
public class CarStateErrorException extends Exception {
    private static final long serialVersionUID = -5629175439268813047L;

    public CarStateErrorException() {
    }

    public CarStateErrorException(String str) {
        super(str);
    }

    public CarStateErrorException(String str, Throwable th) {
        super(str, th);
    }

    public CarStateErrorException(Exception exc) {
        super(exc);
    }
}
