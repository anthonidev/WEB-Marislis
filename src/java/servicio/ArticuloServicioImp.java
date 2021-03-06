package servicio;

import java.util.List;
import persistencia.Articulo;
import persistencia.ArticuloDao;

public class ArticuloServicioImp implements ArticuloServicio {

    private ArticuloDao ad;
    private Articulo art;

    public void setAd(ArticuloDao ad) {
        this.ad = ad;
    }

    public void setArt(Articulo art) {
        this.art = art;
    }

    @Override
    public String grabar(String cod, String nom, double pre, int sto) {
        art.setCod(cod);
        art.setNom(nom);
        art.setPre(pre);
        art.setSto(sto);
        return ad.grabar(art);
    }

    @Override
    public Object[] buscar(String cod) {
        art = ad.buscar(cod);
        if (art != null) {
            Object[] fil = new Object[4];
            fil[0] = art.getCod();
            fil[1] = art.getNom();
            fil[2] = art.getPre();
            fil[3] = art.getSto();
            return fil;
        }
        return null;
    }

    @Override
    public List listar() {
        return ad.listar();
    }

    @Override
    public String eliminar(String cod) {
        return ad.eliminar(cod);
    }

    @Override
    public String Actualizar(String cod, double pre, int sto) {
        art = ad.buscar(cod);
        art.setPre(pre);
        art.setSto(sto);
        return ad.actualizar(art);
    }

}
