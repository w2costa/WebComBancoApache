/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import modelo.Cliente;

/**
 *
 * @author wilson.adm
 */
public class ClienteDAO {

    private final EntityManagerFactory emf;

    public ClienteDAO() {
        emf = JpaUtil.getEmf();
    }

    public void salvar(Cliente cliente) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(cliente);
        em.getTransaction().commit();
        em.close();
    }

    public List<Cliente> listaClientes() {
        EntityManager em = emf.createEntityManager();
        Query q = em.createQuery("SELECT c FROM Cliente c");
        List<Cliente> lista = q.getResultList();
        em.close();
        return lista;
    }

}
