package com.algaworks.algamoney.api.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.algaworks.algamoney.api.model.Pessoa;
import com.algaworks.algamoney.api.repository.PessoaRepository;

@Service
public class PessoaService {
	
	@Autowired
	private PessoaRepository pessoaRepository;
	
	public Pessoa atualizar(Long codigo, Pessoa pessoa) {
		Pessoa pessoaSalva = buscarPessoa(codigo);
		BeanUtils.copyProperties(pessoa, pessoaSalva,"codigo");
		return pessoaRepository.save(pessoaSalva);
	}

	public void atualizarPropriedadeAtivo(Long codigo, Boolean ativo) {
		Pessoa pessoaSalva = buscarPessoa(codigo);
		pessoaSalva.setAtivo(ativo);
		pessoaRepository.save(pessoaSalva);
	}
	
	private Pessoa buscarPessoa(Long codigo) {
		Pessoa pessoaSalva = pessoaRepository.findById(codigo).get();
		return pessoaSalva;
	}
	
}
